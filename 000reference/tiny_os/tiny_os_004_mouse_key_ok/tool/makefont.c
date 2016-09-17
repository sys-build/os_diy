#include <stdio.h>

int main(int argc, char **argv)
{
	FILE *fp0, *fp1;
	if (argc < 3) {
		printf("usage:\n");
        printf("    makefont font.txt font.c\n");
		return 1;
	}
	fp0 = fopen(argv[1], "rb");
	fp1 = fopen(argv[2], "wb");
	if (fp0 == NULL) {
		puts("can't open input file.");
		return 2;
	}
	if (fp1 == NULL) {
		puts("can't open output file.");
		return 3;
	}

    fprintf(fp1, "\n");
    fprintf(fp1, "char g_font[4096] = {");

    int byte_count = 0;
	do {
		char s[12];
		int i;
		if (fgets(s, 12, fp0) != NULL && (s[0] == ' ' || s[0] == '*' || s[0] == '.')) {
			i  = (s[0] == '*') << 7;
			i |= (s[1] == '*') << 6;
			i |= (s[2] == '*') << 5;
			i |= (s[3] == '*') << 4;
			i |= (s[4] == '*') << 3;
			i |= (s[5] == '*') << 2;
			i |= (s[6] == '*') << 1;
			i |= (s[7] == '*')     ;
            if ((byte_count % 16) == 0) {
                fprintf(fp1, "\n    ");
            }
			fprintf(fp1, "0x%02x, ", i);
            byte_count++;
		}
	} while (!feof(fp0));

    fprintf(fp1, "\n");
    fprintf(fp1, "};\n");
    fprintf(fp1, "\n");
    
	fclose(fp0);
	fclose(fp1);
	return 0;
}
