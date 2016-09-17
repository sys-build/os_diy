void io_hlt(void);

void HariMain(void)
{
	int i;
	char *p;

	for (i = 0xa0000; i <= 0xaffff; i++) {
		p = i; /* this line generate a warning */
		*p = i & 0x0f; /* Screen turns striped */
	}

	for (;;) {
		io_hlt();
	}
}
