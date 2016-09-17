#include <stdio.h>
#include <string.h>
#include <assert.h>

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

int main(int argc, char* argv[]) {

	FILE* objdump_fp = 0;
	FILE* header_fp = 0;
	char  cmd_buff[2048];
	char  line_buff[2048];

	int text_size = 0;
	int data_size = 0;
	int bss_size = 0;
	int align_size = 0;

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
			sscanf(line_buff, "%s %s %x", temp, temp, &text_size);
		} else if (strstr(line_buff, ".data") != 0) {
			sscanf(line_buff, "%s %s %x", temp, temp, &data_size);
		} else if (strstr(line_buff, ".bss") != 0) {
			sscanf(line_buff, "%s %s %x", temp, temp, &bss_size);
		}
	}

	printf("text size:%d\n", text_size);
	printf("data size:%d\n", data_size);
	printf("bss size:%d\n", bss_size);

	assert(text_size > 0);
	assert(data_size >= 0);
	assert(bss_size >= 0);

	pclose(objdump_fp);

	// .text
	sprintf(cmd_buff, "objcopy -j .text -O binary %s %s.text", argv[1], argv[1]);
	system(cmd_buff);

	// .text_align4
	align_size = (text_size + 3) / 4 * 4 - text_size;
	assert(align_size >= 0);
	sprintf(cmd_buff, "dd if=/dev/zero of=%s.text_align4 bs=1 count=%d", argv[1], align_size);
	system(cmd_buff);

	// .data
	sprintf(cmd_buff, "objcopy -j .data -O binary %s %s.data", argv[1], argv[1]);
	system(cmd_buff);

	// .bss
	
	// app header
	struct APP_HEADER header;
	assert(sizeof(header) == 36);

	header.total_size = 0x311000;
	header.sign[0] = 't';
	header.sign[1] = 'i';
	header.sign[2] = 'n';
	header.sign[3] = 'y';
	header.mmarea_size = 0;
	header.data_addr = 0x310000;
	header.data_size = data_size;
	header.inital_data_pos = sizeof(header) + text_size + align_size;
	header.opcode = 0xe9000000;
	header.entry_addr = 0x4;
	header.heap_addr = (header.data_addr + header.data_size + bss_size + 3) / 4 * 4;

	sprintf(line_buff, "%s.header", argv[1]);
	header_fp = fopen(line_buff, "wb");
	assert(header_fp != 0);
	fwrite(&header, sizeof(header), 1, header_fp);
	fclose(header_fp);


	// generate tinyapp file
	sprintf(cmd_buff, "cat %s.header %s.text %s.text_align4 %s.data > %s",
		argv[1], argv[1], argv[1], argv[1], argv[2]);
	system(cmd_buff);

	return 0;
}

