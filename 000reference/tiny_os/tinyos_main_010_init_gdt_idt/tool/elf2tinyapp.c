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

void get_section_content(const char* elf_file, struct ELF_SECTION *section) {
	if (section->size == 0)
		return;

	FILE *fp = fopen(elf_file, "rb");
	assert(fp != 0);

	section->file_content = malloc(section->size);
	fseek(fp, section->file_offset, SEEK_SET);
	fread(section->file_content, section->size, 1, fp);

	fclose(fp);
}

void write_section(FILE *app_fp, struct ELF_SECTION *section) {
	if (section->size == 0)
		return;

	if (strcmp(section->name, ".text") == 0 ||
		strcmp(section->name, ".rodata") == 0) {
		fseek(app_fp, section->VMA - 0x280000, SEEK_SET);
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

	FILE* objdump_fp = 0;
	FILE* app_fp = 0;
	char  cmd_buff[2048];
	char  line_buff[2048];

	struct ELF_SECTION text, rodata, data, bss;
	memset(&text, 0, sizeof(struct ELF_SECTION));
	memset(&rodata, 0, sizeof(struct ELF_SECTION));
	memset(&data, 0, sizeof(struct ELF_SECTION));
	memset(&bss, 0, sizeof(struct ELF_SECTION));

	text.name = ".text";
	rodata.name = ".rodata";
	data.name = ".data";
	bss.name = ".bss";

	if (argc != 3) {
		printf("usage:\n");
		printf("    elf2tinyapp elf_file app_file\n");
		return -1;
	}

	printf("elf file: %s\n", argv[1]);
	printf("tinyapp file: %s\n", argv[2]);

	sprintf(cmd_buff, "objdump -h %s", argv[1]);
	objdump_fp = popen(cmd_buff, "r");

	while (fgets(line_buff, sizeof(line_buff), objdump_fp) != 0) {
		char temp[1024];
		if (strstr(line_buff, ".text") != 0) {
			sscanf(line_buff, "%s %s %x %x %x %x", temp, temp,
				&text.size, &text.VMA, &text.LMA, &text.file_offset);
		} else if (strstr(line_buff, ".rodata") != 0) {
			sscanf(line_buff, "%s %s %x %x %x %x", temp, temp,
				&rodata.size, &rodata.VMA, &rodata.LMA, &rodata.file_offset);
		} else if (strstr(line_buff, ".data") != 0) {
			sscanf(line_buff, "%s %s %x %x %x %x", temp, temp,
				&data.size, &data.VMA, &data.LMA, &data.file_offset);
		} else if (strstr(line_buff, ".bss") != 0) {
			sscanf(line_buff, "%s %s %x %x %x %x", temp, temp,
				&bss.size, &bss.VMA, &bss.LMA, &bss.file_offset);
		}
	}

	printf("text size: %d\n", text.size);
	printf("rodata size: %d\n", rodata.size);
	printf("data size: %d\n", data.size);
	printf("bss size: %d\n", bss.size);

	assert(text.size > 0);
	assert(rodata.size >= 0);
	assert(data.size >= 0);
	assert(bss.size >= 0);

	pclose(objdump_fp);

	// get elf section content
	get_section_content(argv[1], &text);	
	get_section_content(argv[1], &rodata);	
	get_section_content(argv[1], &data);	
	get_section_content(argv[1], &bss);	

	// app header
	struct APP_HEADER header;
	assert(sizeof(header) == 36);

	header.total_size = 0x311000;
	memcpy(header.sign, "tiny", 4);
	header.mmarea_size = 0;
	header.data_addr = 0x310000;
	header.data_size = data.size;
	header.inital_data_pos = 0;
	header.opcode = 0xe9000000;
	header.entry_addr = 0x4;
	header.heap_addr = (header.data_addr + header.data_size + bss.size + 3) / 4 * 4;

	// generate tinyapp file
	app_fp = fopen(argv[2], "wb");
	assert(app_fp != 0);
	fwrite(&header, sizeof(header), 1, app_fp);

	write_section(app_fp, &text);
	write_section(app_fp, &rodata);

	write_align4(app_fp);
	header.inital_data_pos = ftell(app_fp);
	write_section(app_fp, &data);

	// update tinyapp header
	fseek(app_fp, 0, SEEK_SET);
	fwrite(&header, sizeof(header), 1, app_fp);

	fclose(app_fp);

	return 0;
}

