#include <stdio.h>

struct HRB_HEAD {
	int stack_data_heap_total_size;
	char sign[4];
	int mmarea_size;
	int data_dest_addr;
	int data_size;
	int has_inital_data;
	int special;
	int entry_addr;
	int heap_addr;
};

int main(int argc, char* argv[]) {

	FILE* fp = fopen(argv[1], "rb");
	if (fp == NULL) {
		printf("failed to open .header file\n");
		return -1;
	}

	struct HRB_HEAD h;
	fread(&h, sizeof(h), 1, fp);

	printf("0  stack + .data + heap = %d\n", h.stack_data_heap_total_size);
	printf("4  sign = %c%c%c%c\n", h.sign[0], h.sign[1], h.sign[2], h.sign[3]);
	printf("8  mmarea size = %d\n", h.mmarea_size);
	printf("12 data addr = 0x%x\n", h.data_dest_addr);
	printf("16 data size = %d\n", h.data_size);
	printf("20 inital data = %d\n", h.has_inital_data);
	printf("24 special = 0x%x\n", h.special);
	printf("28 entry addr = 0x%x\n", h.entry_addr);
	printf("32 heap addr = 0x%x\n", h.heap_addr);

	return 0;
}
