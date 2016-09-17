#include <stdio.h>

void io_hlt(void);
void io_cli(void);
void io_out8(int port, int data);
int io_load_eflags(void);
void io_store_eflags(int eflags);

void init_palette(void);
void set_palette(int start, int end, unsigned char *rgb);
void boxfill8(unsigned char *vram, int xsize, unsigned char c, int x0, int y0, int x1, int y1);
void putfont8(char *vram, int xsize, int x, int y, char c, char *font);
void putfonts8_asc(char *vram, int xsize, int x, int y, char c, unsigned char *s);


#define COL8_000000		0
#define COL8_FF0000		1
#define COL8_00FF00		2
#define COL8_FFFF00		3
#define COL8_0000FF		4
#define COL8_FF00FF		5
#define COL8_00FFFF		6
#define COL8_FFFFFF		7
#define COL8_C6C6C6		8
#define COL8_840000		9
#define COL8_008400		10
#define COL8_848400		11
#define COL8_000084		12
#define COL8_840084		13
#define COL8_008484		14
#define COL8_848484		15

struct BOOTINFO {
	char cyls, leds, vmode, reserve;
	short scrnx, scrny;
	char *vram;
};


void _start(void) {
    struct BOOTINFO *bootinfo_ptr = (struct BOOTINFO *) 0x0ff0;
    extern char g_font[4096];

	init_palette();
	init_screen(bootinfo_ptr->vram, bootinfo_ptr->scrnx, bootinfo_ptr->scrny);

	putfont8(bootinfo_ptr->vram, bootinfo_ptr->scrnx,  28, 28, COL8_FFFFFF, g_font + 'A' * 16);

	char abc[28];
    sprintf(abc, "_start addr: 0x%x", (unsigned int)_start);

    putfonts8_asc(bootinfo_ptr->vram, bootinfo_ptr->scrnx,  8, 8, COL8_FFFFFF, abc);

	while (1) {
		io_hlt();
	}
}

void init_palette(void) {
	static unsigned char table_rgb[16 * 3] = {
		0x00, 0x00, 0x00,	// 0 black
		0xff, 0x00, 0x00,	// 1 red
		0x00, 0xff, 0x00,	// 2 green
		0xff, 0xff, 0x00,	// 3 yellow
		0x00, 0x00, 0xff,	// 4 blue
		0xff, 0x00, 0xff,	// 5
		0x00, 0xff, 0xff,	// 6
		0xff, 0xff, 0xff,	
		0xc6, 0xc6, 0xc6,	
		0x84, 0x00, 0x00,	
		0x00, 0x84, 0x00,	
		0x84, 0x84, 0x00,	
		0x00, 0x00, 0x84,	
		0x84, 0x00, 0x84,	
		0x00, 0x84, 0x84,	
		0x84, 0x84, 0x84	
	};
	set_palette(0, 15, table_rgb);
}

void set_palette(int start, int end, unsigned char *rgb)
{
	int i, eflags;
	eflags = io_load_eflags();
	io_cli();
	io_out8(0x03c8, start);
	for (i = start; i <= end; i++) {
		io_out8(0x03c9, rgb[0] / 4);
		io_out8(0x03c9, rgb[1] / 4);
		io_out8(0x03c9, rgb[2] / 4);
		rgb += 3;
	}
	io_store_eflags(eflags);
}

void boxfill8(unsigned char *vram, int xsize, unsigned char c, int x0, int y0, int x1, int y1)
{
	int x, y;
	for (y = y0; y <= y1; y++) {
		for (x = x0; x <= x1; x++)
			vram[y * xsize + x] = c;
	}
	return;
}

void init_screen(char *vram, int x, int y)
{
	boxfill8(vram, x, COL8_008484,  0,     0,      x -  1, y - 29);
	boxfill8(vram, x, COL8_C6C6C6,  0,     y - 28, x -  1, y - 28);
	boxfill8(vram, x, COL8_FFFFFF,  0,     y - 27, x -  1, y - 27);
	boxfill8(vram, x, COL8_C6C6C6,  0,     y - 26, x -  1, y -  1);

	boxfill8(vram, x, COL8_FFFFFF,  3,     y - 24, 59,     y - 24);
	boxfill8(vram, x, COL8_FFFFFF,  2,     y - 24,  2,     y -  4);
	boxfill8(vram, x, COL8_848484,  3,     y -  4, 59,     y -  4);
	boxfill8(vram, x, COL8_848484, 59,     y - 23, 59,     y -  5);
	boxfill8(vram, x, COL8_000000,  2,     y -  3, 59,     y -  3);
	boxfill8(vram, x, COL8_000000, 60,     y - 24, 60,     y -  3);

	boxfill8(vram, x, COL8_848484, x - 47, y - 24, x -  4, y - 24);
	boxfill8(vram, x, COL8_848484, x - 47, y - 23, x - 47, y -  4);
	boxfill8(vram, x, COL8_FFFFFF, x - 47, y -  3, x -  4, y -  3);
	boxfill8(vram, x, COL8_FFFFFF, x -  3, y - 24, x -  3, y -  3);
	return;
}

void putfont8(char *vram, int xsize, int x, int y, char c, char *font) {
	int i;
	char *p, d;
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
}

void putfonts8_asc(char *vram, int xsize, int x, int y, char c, unsigned char *s) {
	extern char g_font[4096];
	for (; *s != 0x00; s++) {
		putfont8(vram, xsize, x, y, c, g_font + *s * 16);
		x += 8;
	}
	return;
}


