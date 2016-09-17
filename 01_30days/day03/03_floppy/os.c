void HariMain(void)
{
	int i;
	char *p;

	for (i = 0xa0000; i <= 0xaffff; i++) {
		p = i;
		*p = 4;
	}
fin:
	/* We cannot use HLT here */
	goto fin;
}
