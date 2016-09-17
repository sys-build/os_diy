
struct BOOTINFO {
	char cyls;
	char leds;
	char vmode;
	char reserve;
	short scrnx, scrny;
	char *vram;
};

void _start() {
    struct BOOTINFO *binfo = (struct BOOTINFO *) 0x0ff0;
    extern char g_font[4096];

	init_screen24(binfo->vram, binfo->scrnx, binfo->scrny);

	putfont24(binfo->vram, binfo->scrnx,  8, 8, 0xFFFFFF, g_font + 'A' * 16);
	putfont24(binfo->vram, binfo->scrnx, 16, 8, 0xFFFFFF, g_font + 'B' * 16);
	putfont24(binfo->vram, binfo->scrnx, 24, 8, 0xFFFFFF, g_font + 'C' * 16);
	putfont24(binfo->vram, binfo->scrnx, 40, 8, 0xFFFFFF, g_font + '1' * 16);
	putfont24(binfo->vram, binfo->scrnx, 48, 8, 0xFFFFFF, g_font + '2' * 16);
	putfont24(binfo->vram, binfo->scrnx, 56, 8, 0xFFFFFF, g_font + '3' * 16);

    for (;;) {
    }
}

void boxfill24(unsigned char *vram, int xsize, int c, int x0, int y0, int x1, int y1)
{
	int x, y;
    int r = (c & 0xff0000) >> 16;
    int g = (c & 0x00ff00) >> 8;
    int b = (c & 0x0000ff);
	for (y = y0; y <= y1; y++) {
		for (x = x0; x <= x1; x++) {
			unsigned char *color = &vram[(y * xsize + x) * 3];
            color[0] = b;
            color[1] = g;
            color[2] = r;
        }
	}
	return;
}

void init_screen24(char *vram, int x, int y)
{
	boxfill24(vram, x, 0x008484,  0,     0,      x -  1, y - 29);
	boxfill24(vram, x, 0xC6C6C6,  0,     y - 28, x -  1, y - 28);
	boxfill24(vram, x, 0xFFFFFF,  0,     y - 27, x -  1, y - 27);
	boxfill24(vram, x, 0xC6C6C6,  0,     y - 26, x -  1, y -  1);

	boxfill24(vram, x, 0xFFFFFF,  3,     y - 24, 59,     y - 24);
	boxfill24(vram, x, 0xFFFFFF,  2,     y - 24,  2,     y -  4);
	boxfill24(vram, x, 0x848484,  3,     y -  4, 59,     y -  4);
	boxfill24(vram, x, 0x848484, 59,     y - 23, 59,     y -  5);
	boxfill24(vram, x, 0x000000,  2,     y -  3, 59,     y -  3);
	boxfill24(vram, x, 0x000000, 60,     y - 24, 60,     y -  3);

	boxfill24(vram, x, 0x848484, x - 47, y - 24, x -  4, y - 24);
	boxfill24(vram, x, 0x848484, x - 47, y - 23, x - 47, y -  4);
	boxfill24(vram, x, 0xFFFFFF, x - 47, y -  3, x -  4, y -  3);
	boxfill24(vram, x, 0xFFFFFF, x -  3, y - 24, x -  3, y -  3);
	return;
}

void putfont24(char *vram, int xsize, int x, int y, int c, char *font) {
	int i;
    int r = (c & 0xff0000) >> 16;
    int g = (c & 0x00ff00) >> 8;
    int b = (c & 0x0000ff);

	char *p, d;
	for (i = 0; i < 16; i++) {
		p = vram + ((y + i) * xsize + x) * 3;
		d = font[i];
		if ((d & 0x80) != 0) { p[0] = b; p[1] = g; p[2] = r; } p += 3;
		if ((d & 0x40) != 0) { p[0] = b; p[1] = g; p[2] = r; } p += 3;
		if ((d & 0x20) != 0) { p[0] = b; p[1] = g; p[2] = r; } p += 3;
		if ((d & 0x10) != 0) { p[0] = b; p[1] = g; p[2] = r; } p += 3;
		if ((d & 0x08) != 0) { p[0] = b; p[1] = g; p[2] = r; } p += 3;
		if ((d & 0x04) != 0) { p[0] = b; p[1] = g; p[2] = r; } p += 3;
		if ((d & 0x02) != 0) { p[0] = b; p[1] = g; p[2] = r; } p += 3;
		if ((d & 0x01) != 0) { p[0] = b; p[1] = g; p[2] = r; } p += 3;
	}
}

