
#include "bootpack.h"
#include <stdio.h>

struct MEMMAN g_memman;

void _start(void)
{
	struct BOOTINFO *binfo = (struct BOOTINFO *) ADR_BOOTINFO;
	char s[40], keybuf[32], mousebuf[128];
    struct PIXEL24 mcursor[256];
	int mx, my, i;
	struct MOUSE_DEC mdec;
    struct MEMMAN *memman = (struct MEMMAN *) &g_memman;


	init_gdtidt();
	init_pic();
	io_sti();
	fifo8_init(&keyfifo, 32, keybuf);
	fifo8_init(&mousefifo, 128, mousebuf);
	io_out8(PIC0_IMR, 0xf9);
	io_out8(PIC1_IMR, 0xef);

	init_keyboard();
	enable_mouse(&mdec);

	init_screen(binfo->vram, binfo->scrnx, binfo->scrny);
	mx = (binfo->scrnx - 16) / 2;
	my = (binfo->scrny - 28 - 16) / 2;

	init_mouse_cursor(mcursor, COL24_008484);
	draw_block(binfo->vram, binfo->scrnx, 16, 16, mx, my, mcursor, 16);

	sprintf(s, "(%3d, %3d)", mx, my);
	draw_string(binfo->vram, binfo->scrnx, 0, 0, COL24_FFFFFF, s);

    unsigned int memtotal = memtest(0x00400000, 0xbfffffff);
    memman_init(memman, 0x00400000, memtotal - 0x00400000);

	sprintf(s, "memory %dMB   free : %dKB",
			memtotal / (1024 * 1024), memman_total(memman) / 1024);
	draw_string(binfo->vram, binfo->scrnx, 0, 32, COL24_FFFFFF, s);


	for (;;) {
		io_cli();
		if (fifo8_status(&keyfifo) + fifo8_status(&mousefifo) == 0) {
			io_stihlt();
		} else {
			if (fifo8_status(&keyfifo) != 0) {
				i = fifo8_get(&keyfifo);
				io_sti();
				sprintf(s, "%02X", i);
				draw_rect(binfo->vram, binfo->scrnx, COL24_008484,  0, 16, 15, 31);
				draw_string(binfo->vram, binfo->scrnx, 0, 16, COL24_FFFFFF, s);
			} else if (fifo8_status(&mousefifo) != 0) {
				i = fifo8_get(&mousefifo);
				io_sti();
				if (mouse_decode(&mdec, i) != 0) {
					/* �f�[�^��3�o�C�g�������̂ŕ\�� */
					sprintf(s, "[lcr %4d %4d]", mdec.x, mdec.y);
					if ((mdec.btn & 0x01) != 0) {
						s[1] = 'L';
					}
					if ((mdec.btn & 0x02) != 0) {
						s[3] = 'R';
					}
					if ((mdec.btn & 0x04) != 0) {
						s[2] = 'C';
					}
					draw_rect(binfo->vram, binfo->scrnx, COL24_008484, 32, 16, 32 + 15 * 8 - 1, 31);
					draw_string(binfo->vram, binfo->scrnx, 32, 16, COL24_FFFFFF, s);
					/* �}�E�X�J�[�\���̈ړ� */
					draw_rect(binfo->vram, binfo->scrnx, COL24_008484, mx, my, mx + 15, my + 15); /* �}�E�X���� */
					mx += mdec.x;
					my += mdec.y;
					if (mx < 0) {
						mx = 0;
					}
					if (my < 0) {
						my = 0;
					}
					if (mx > binfo->scrnx - 16) {
						mx = binfo->scrnx - 16;
					}
					if (my > binfo->scrny - 16) {
						my = binfo->scrny - 16;
					}
					sprintf(s, "(%3d, %3d)", mx, my);
					draw_rect(binfo->vram, binfo->scrnx, COL24_008484, 0, 0, 79, 15); /* ���W���� */
					draw_string(binfo->vram, binfo->scrnx, 0, 0, COL24_FFFFFF, s); /* ���W���� */
					draw_block(binfo->vram, binfo->scrnx, 16, 16, mx, my, mcursor, 16); /* �}�E�X�`�� */
				}
			}
		}
	}
}



