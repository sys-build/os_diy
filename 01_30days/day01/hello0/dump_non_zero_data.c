#include <stdio.h>
#include <stdlib.h>

#define BUF_SIZE (0x90)
unsigned char a[BUF_SIZE];

int main()
{
	FILE *fp = NULL;
	int i = 0;

	fp = fopen("helloos.img", "r");
	fread(a, BUF_SIZE, 1, fp);
	fclose(fp);

	for(i=0; i<BUF_SIZE; i++)
	{
		printf("0x%x, ", a[i]);
	}

	printf("\n");
	printf("size: 0x%x\n", BUF_SIZE);

	return 0;
}