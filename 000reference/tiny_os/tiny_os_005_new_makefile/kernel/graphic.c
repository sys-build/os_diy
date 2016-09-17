

#include "bootpack.h"

struct PIXEL24 COL24_000000 = {0x00,0x00,0x00};
struct PIXEL24 COL24_FF0000	= {0x00,0x00,0xff};
struct PIXEL24 COL24_00FF00 = {0x00,0xff,0x00};
struct PIXEL24 COL24_FFFF00 = {0x00,0xff,0xff};
struct PIXEL24 COL24_0000FF = {0xff,0x00,0x00};
struct PIXEL24 COL24_FF00FF = {0xff,0x00,0xff};
struct PIXEL24 COL24_00FFFF = {0xff,0xff,0x00};
struct PIXEL24 COL24_FFFFFF = {0xff,0xff,0xff};
struct PIXEL24 COL24_C6C6C6 = {0xc6,0xc6,0xc6};
struct PIXEL24 COL24_840000 = {0x00,0x00,0x84};
struct PIXEL24 COL24_008400 = {0x00,0x84,0x00};
struct PIXEL24 COL24_848400 = {0x00,0x84,0x84};
struct PIXEL24 COL24_000084 = {0x84,0x00,0x00};
struct PIXEL24 COL24_840084 = {0x84,0x00,0x84};
struct PIXEL24 COL24_008484 = {0x84,0x84,0x00};
struct PIXEL24 COL24_848484 = {0x84,0x84,0x84};


void draw_rect(struct PIXEL24 *vram, int xsize, struct PIXEL24 color, int x0, int y0, int x1, int y1)
{
	int x, y;
	for (y = y0; y <= y1; y++) {
		for (x = x0; x <= x1; x++)
			vram[y * xsize + x] = color;
	}
	return;
}

void init_screen(struct PIXEL24 *vram, int x, int y)
{
	draw_rect(vram, x, COL24_008484,  0,     0,      x -  1, y - 29);
	draw_rect(vram, x, COL24_C6C6C6,  0,     y - 28, x -  1, y - 28);
	draw_rect(vram, x, COL24_FFFFFF,  0,     y - 27, x -  1, y - 27);
	draw_rect(vram, x, COL24_C6C6C6,  0,     y - 26, x -  1, y -  1);

	draw_rect(vram, x, COL24_FFFFFF,  3,     y - 24, 59,     y - 24);
	draw_rect(vram, x, COL24_FFFFFF,  2,     y - 24,  2,     y -  4);
	draw_rect(vram, x, COL24_848484,  3,     y -  4, 59,     y -  4);
	draw_rect(vram, x, COL24_848484, 59,     y - 23, 59,     y -  5);
	draw_rect(vram, x, COL24_000000,  2,     y -  3, 59,     y -  3);
	draw_rect(vram, x, COL24_000000, 60,     y - 24, 60,     y -  3);

	draw_rect(vram, x, COL24_848484, x - 47, y - 24, x -  4, y - 24);
	draw_rect(vram, x, COL24_848484, x - 47, y - 23, x - 47, y -  4);
	draw_rect(vram, x, COL24_FFFFFF, x - 47, y -  3, x -  4, y -  3);
	draw_rect(vram, x, COL24_FFFFFF, x -  3, y - 24, x -  3, y -  3);
	return;
}

void draw_font(struct PIXEL24 *vram, int xsize, int x, int y, struct PIXEL24 c, char *font)
{
	int i;
    struct PIXEL24 *p;
	char d;
	for (i = 0; i < 16; i++) {
		p = vram + (y + i) * xsize + x;
		d = font[i];
		if ((d & 0x80) != 0) { p[0] = c; }
		if ((d & 0x40) != 0) { p[1] = c; }
		if ((d & 0x20) != 0) { p[2] = c; }
		if ((d & 0x10) != 0) { p[3] = c; }
		if ((d & 0x08) != 0) { p[4] = c; }
		if ((d & 0x04) != 0) { p[5] = c; }
		if ((d & 0x02) != 0) { p[6] = c; }
		if ((d & 0x01) != 0) { p[7] = c; }
	}
	return;
}

void draw_string(struct PIXEL24 *vram, int xsize, int x, int y, struct PIXEL24 c, char *s)
{
	extern char g_font[4096];
	for (; *s != 0x00; s++) {
		draw_font(vram, xsize, x, y, c, g_font + *s * 16);
		x += 8;
	}
	return;
}

void init_mouse_cursor(struct PIXEL24 *mouse, struct PIXEL24 bc)
{
	static char cursor[16][16] = {
		"**************..",
		"*OOOOOOOOOOO*...",
		"*OOOOOOOOOO*....",
		"*OOOOOOOOO*.....",
		"*OOOOOOOO*......",
		"*OOOOOOO*.......",
		"*OOOOOOO*.......",
		"*OOOOOOOO*......",
		"*OOOO**OOO*.....",
		"*OOO*..*OOO*....",
		"*OO*....*OOO*...",
		"*O*......*OOO*..",
		"**........*OOO*.",
		"*..........*OOO*",
		"............*OO*",
		".............***"
	};
	int x, y;

	for (y = 0; y < 16; y++) {
		for (x = 0; x < 16; x++) {
			if (cursor[y][x] == '*') {
				mouse[y * 16 + x] = COL24_000000;
			}
			if (cursor[y][x] == 'O') {
				mouse[y * 16 + x] = COL24_FFFFFF;
			}
			if (cursor[y][x] == '.') {
				mouse[y * 16 + x] = bc;
			}
		}
	}
	return;
}

void draw_block(struct PIXEL24 *vram, int vxsize, int pxsize,
	int pysize, int px0, int py0, struct PIXEL24 *buf, int bxsize)
{
	int x, y;
	for (y = 0; y < pysize; y++) {
		for (x = 0; x < pxsize; x++) {
			vram[(py0 + y) * vxsize + (px0 + x)] = buf[y * bxsize + x];
		}
	}
	return;
}

