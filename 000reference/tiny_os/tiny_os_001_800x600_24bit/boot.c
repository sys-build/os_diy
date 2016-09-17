
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

    int x, y;
    for (x = 0; x < binfo->scrnx; x++) {
        for (y = 0; y < binfo->scrny; y++) {
            char *color = binfo->vram + (y * binfo->scrnx + x) * 3;
            color[0] = 0x00;
            color[1] = 0x00;
            color[2] = 0xff;
        }
    }

    for (;;) {
        x = y;
        y = x;
    }
}

