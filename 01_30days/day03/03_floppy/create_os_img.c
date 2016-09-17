#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define OS_IMG_SIZE (1024*1440)
unsigned char a[OS_IMG_SIZE] = {0};

void fill_img_buf(void)
{
	FILE *fp_os_part = NULL;
	fp_os_part = fopen("os.part", "r");
	fread(a, OS_IMG_SIZE, 1, fp_os_part);
	fclose(fp_os_part);
}

int main()
{
	FILE *fp = NULL;

	fp = fopen("os.img", "w+");
	fill_img_buf();
	fwrite(a, OS_IMG_SIZE, 1, fp);
	fclose(fp);

	return 0;
}