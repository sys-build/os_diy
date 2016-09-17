
#ifndef __BOOT_H__
#define __BOOT_H__

struct PIXEL24 {
    char b, g, r;
};

struct BOOTINFO {
	char cyls;
	char leds;
	char vmode;
	char reserve;
	short scrnx;
    short scrny;
	struct PIXEL24 *vram;
};

#define ADR_BOOTINFO	0x00000ff0

void io_hlt(void);
void io_cli(void);
void io_sti(void);
void io_stihlt(void);
int io_in8(int port);
void io_out8(int port, int data);
int io_load_eflags(void);
void io_store_eflags(int eflags);
void load_gdtr(int limit, int addr);
void load_idtr(int limit, int addr);
int load_cr0(void);
void store_cr0(int cr0);
void asm_inthandler21(void);
void asm_inthandler27(void);
void asm_inthandler2c(void);

struct FIFO8 {
	unsigned char *buf;
	int p, q, size, free, flags;
};

void fifo8_init(struct FIFO8 *fifo, int size, unsigned char *buf);
int fifo8_put(struct FIFO8 *fifo, unsigned char data);
int fifo8_get(struct FIFO8 *fifo);
int fifo8_status(struct FIFO8 *fifo);



void init_screen(struct PIXEL24 *vram, int x, int y);
void draw_rect(struct PIXEL24 *vram, int xsize, struct PIXEL24 color, int x0, int y0, int x1, int y1);
void draw_font(struct PIXEL24 *vram, int xsize, int x, int y, struct PIXEL24 color, char *font);
void draw_string(struct PIXEL24 *vram, int xsize, int x, int y, struct PIXEL24 color, char *str);

void init_mouse_cursor(struct PIXEL24 *mouse, struct PIXEL24 bc);
void draw_block(struct PIXEL24 *vram, int vxsize, int pxsize,
	int pysize, int px0, int py0, struct PIXEL24 *buf, int bxsize);

extern struct PIXEL24 COL24_000000;
extern struct PIXEL24 COL24_FF0000;
extern struct PIXEL24 COL24_00FF00;
extern struct PIXEL24 COL24_FFFF00;
extern struct PIXEL24 COL24_0000FF;
extern struct PIXEL24 COL24_FF00FF;
extern struct PIXEL24 COL24_00FFFF;
extern struct PIXEL24 COL24_FFFFFF;
extern struct PIXEL24 COL24_C6C6C6;
extern struct PIXEL24 COL24_840000;
extern struct PIXEL24 COL24_008400;
extern struct PIXEL24 COL24_848400;
extern struct PIXEL24 COL24_000084;
extern struct PIXEL24 COL24_840084;
extern struct PIXEL24 COL24_008484;
extern struct PIXEL24 COL24_848484;


struct SEGMENT_DESCRIPTOR {
	short limit_low, base_low;
	char base_mid, access_right;
	char limit_high, base_high;
};

struct GATE_DESCRIPTOR {
	short offset_low, selector;
	char dw_count, access_right;
	short offset_high;
};

void init_gdtidt(void);
void set_segmdesc(struct SEGMENT_DESCRIPTOR *sd, unsigned int limit, int base, int ar);
void set_gatedesc(struct GATE_DESCRIPTOR *gd, int offset, int selector, int ar);

#define ADR_IDT			0x0026f800
#define LIMIT_IDT		0x000007ff
#define ADR_GDT			0x00270000
#define LIMIT_GDT		0x0000ffff
#define ADR_BOTPAK		0x00280000
#define LIMIT_BOTPAK	0x0007ffff
#define AR_DATA32_RW	0x4092
#define AR_CODE32_ER	0x409a
#define AR_INTGATE32	0x008e

void init_pic(void);
void inthandler21(int *esp);
void inthandler27(int *esp);
void inthandler2c(int *esp);

#define PIC0_ICW1		0x0020
#define PIC0_OCW2		0x0020
#define PIC0_IMR		0x0021
#define PIC0_ICW2		0x0021
#define PIC0_ICW3		0x0021
#define PIC0_ICW4		0x0021
#define PIC1_ICW1		0x00a0
#define PIC1_OCW2		0x00a0
#define PIC1_IMR		0x00a1
#define PIC1_ICW2		0x00a1
#define PIC1_ICW3		0x00a1
#define PIC1_ICW4		0x00a1

/* keyboard.c */
void inthandler21(int *esp);
void wait_KBC_sendready(void);
void init_keyboard(void);
extern struct FIFO8 keyfifo;
#define PORT_KEYDAT		0x0060
#define PORT_KEYCMD		0x0064

/* mouse.c */
struct MOUSE_DEC {
	unsigned char buf[3], phase;
	int x, y, btn;
};
void inthandler2c(int *esp);
void enable_mouse(struct MOUSE_DEC *mdec);
int mouse_decode(struct MOUSE_DEC *mdec, unsigned char dat);
extern struct FIFO8 mousefifo;

/* memory.c */
struct MEMBLOCK {
    unsigned int address;
    unsigned int size;
    struct MEMBLOCK *prev, *next;
};

struct MEMMAN {
    unsigned int address;
    unsigned int size;
    struct MEMBLOCK *head;
};

unsigned int memtest(unsigned int start, unsigned int end);
unsigned int memtest_sub(unsigned int start, unsigned int end);

void memman_init(struct MEMMAN *man, unsigned int address, unsigned int size);
unsigned int memman_total(struct MEMMAN *man);
unsigned int memman_alloc(struct MEMMAN *man, unsigned int size);
int memman_free(struct MEMMAN *man, unsigned int addr, unsigned int size);
unsigned int memman_alloc_4k(struct MEMMAN *man, unsigned int size);
int memman_free_4k(struct MEMMAN *man, unsigned int addr, unsigned int size);
void memman_dump(struct MEMMAN *man);

#endif // __BOOT_H__

