#include <stdio.h>
#include <string.h>
#include <assert.h>
#include <malloc.h>

struct APP_HEADER {
	int total_size;
	char sign[4];
	int mmarea_size;
	int data_addr;
	int data_size;
	int inital_data_pos;
	int opcode;
	int entry_addr;
	int heap_addr;
};

struct ELF_SECTION {
	const char* name;
	int size;
	int VMA;
	int LMA;
	int file_offset;
	char *file_content;
};

int get_start_address(const char *elf_file) {
    char cmd_buff[1024];
    char line_buff[1024];
    sprintf(cmd_buff, "objdump -f %s", elf_file);
    FILE *fp = popen(cmd_buff, "r");
    assert(fp != 0);

    int start_addr = 0;
    while (fgets(line_buff, sizeof(line_buff), fp) != 0) {
        char temp[1024];
        if (strstr(line_buff, "start address") != 0) {
            sscanf(line_buff, "%s %s %x", temp, temp, &start_addr);
        }
    }
    fclose(fp);

    assert(start_addr >= 0x00000024);
    return start_addr;
}

void read_section(const char *elf_file, struct ELF_SECTION *section) {
    char cmd_buff[1024];
    char line_buff[1024];
    FILE *objdump_fp = 0, *elf_fp = 0;
    
	sprintf(cmd_buff, "objdump -h %s", elf_file);
	objdump_fp = popen(cmd_buff, "r");
    assert(objdump_fp != 0);

	while (fgets(line_buff, sizeof(line_buff), objdump_fp) != 0) {
		char temp[1024];
        if (strstr(line_buff, section->name) != 0) {
			sscanf(line_buff, "%s %s %x %x %x %x", temp, temp,
				&section->size, &section->VMA, &section->LMA, &section->file_offset);
        }
	}
    fclose(objdump_fp);

    if (section->size > 0) {
        section->file_content = malloc(section->size);
        elf_fp = fopen(elf_file, "rb");
        assert(elf_fp != 0);
        fseek(elf_fp, section->file_offset, SEEK_SET);
        fread(section->file_content, section->size, 1, elf_fp);
        fclose(elf_fp);

        if (strcmp(section->name, ".bss") == 0) {
            memset(section->file_content, 0x00, section->size);
        }
    }
}

void write_header(FILE *app_fp, struct APP_HEADER *header) {
    fseek(app_fp, 0, SEEK_SET);
    fwrite(header, sizeof(struct APP_HEADER), 1, app_fp);
}

void write_section(FILE *app_fp, struct APP_HEADER *header, struct ELF_SECTION *section) {
	if (section->size == 0)
		return;

    if (strcmp(section->name, ".text") == 0) {
        fseek(app_fp, section->VMA, SEEK_SET);
    } else if (strcmp(section->name, ".rodata") == 0 ||
        strcmp(section->name, ".data") == 0 ||
        strcmp(section->name, ".bss") == 0) {
        int VMA_base = 0x310000;
        int VMA_offset = section->VMA - VMA_base;
        assert(VMA_offset >= 0);
        int file_offset = header->inital_data_pos + VMA_offset;
        fseek(app_fp, file_offset, SEEK_SET);
    }

	fwrite(section->file_content, section->size, 1, app_fp);
}

void write_align4(FILE *app_fp) {
	int curr_pos = ftell(app_fp);
	int need_bytes = (curr_pos + 3) / 4 * 4 - curr_pos;
	char temp[3] = {0, 0, 0};
	assert(need_bytes <= 3);
	fwrite(temp, need_bytes, 1, app_fp);
}

int main(int argc, char* argv[]) {

	if (argc != 3) {
		printf("usage:\n");
		printf("    elf2tinyapp elf_file app_file\n");
		return -1;
	}

    const char *elf_file = argv[1];
    const char *app_file = argv[2];

	printf("elf file: %s\n", elf_file);
	printf("app file: %s\n", app_file);

	struct ELF_SECTION text, rodata, data, bss;
	memset(&text, 0, sizeof(struct ELF_SECTION));
	memset(&rodata, 0, sizeof(struct ELF_SECTION));
	memset(&data, 0, sizeof(struct ELF_SECTION));
	memset(&bss, 0, sizeof(struct ELF_SECTION));

	text.name = ".text";
	rodata.name = ".rodata";
	data.name = ".data";
	bss.name = ".bss";

    read_section(elf_file, &text);
    read_section(elf_file, &rodata);
    read_section(elf_file, &data);
    read_section(elf_file, &bss);

	printf("text size: %d\n", text.size);
	printf("rodata size: %d\n", rodata.size);
	printf("data size: %d\n", data.size);
	printf("bss size: %d\n", bss.size);

	assert(text.size > 0);
	assert(rodata.size >= 0);
	assert(data.size >= 0);
	assert(bss.size >= 0);

	// app header
	struct APP_HEADER header;
	assert(sizeof(header) == 36);

    int inital_data_size = 0;
    if (rodata.size > 0) {
        inital_data_size = rodata.VMA + rodata.size - 0x310000;
    }
    if (data.size > 0) {
        inital_data_size = data.VMA + data.size - 0x310000;
    }
    if (bss.size > 0) {
        inital_data_size = bss.VMA + bss.size - 0x310000;
    }
    assert(inital_data_size >= rodata.size + data.size + bss.size);

	header.total_size = 0x311000;
	memcpy(header.sign, "tiny", 4);
	header.mmarea_size = 0;
	header.data_addr = 0x310000;
	header.data_size = inital_data_size;
	header.inital_data_pos = 0;
	header.opcode = 0xe9000000;
	header.entry_addr = (unsigned int)get_start_address(elf_file) - 0x20;
	header.heap_addr = (header.data_addr + inital_data_size + 3) / 4 * 4;

	// generate tinyapp file
	FILE *app_fp = fopen(app_file, "wb");
	assert(app_fp != 0);

    write_header(app_fp, &header);
	write_section(app_fp, &header, &text);

	write_align4(app_fp);
	header.inital_data_pos = ftell(app_fp);

	write_section(app_fp, &header, &rodata);
	write_section(app_fp, &header, &data);
    write_section(app_fp, &header, &bss);

	// update tinyapp header
    write_header(app_fp, &header);
    fclose(app_fp);

	return 0;
}

