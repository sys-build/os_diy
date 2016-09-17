
LOCAL_PATH := $(call my-dir)
LOCAL_OUT_DIR := $(OUT_BASE_DIR)/$(LOCAL_PATH)

IPL := $(LOCAL_OUT_DIR)/ipl.bin
KERNEL := $(LOCAL_OUT_DIR)/kernel

$(IPL): $(LOCAL_PATH)/ipl.s
	@mkdir -p $(LOCAL_OUT_DIR)
	$(AS) $< -o $@

LOCAL_SRC_FILES := \
    bootpack.c \
    dsctbl.c \
    fifo.c \
    graphic.c \
    int.c \

LOCAL_OBJ_FILES := $(patsubst %.c,%.o,$(LOCAL_SRC_FILES))
LOCAL_OBJ_FILES := $(addprefix $(LOCAL_OUT_DIR)/,$(LOCAL_OBJ_FILES))

LOCAL_SRC_FILES := $(addprefix $(LOCAL_PATH)/,$(LOCAL_SRC_FILES))


$(LOCAL_OBJ_FILES): %.o: $(LOCAL_SRC_FILES)
	$(CC) $(CFLAGS) $(addsuffix .c,$(basename $(patsubst out/%,%,$@))) -o $@

FONT_SRC := $(LOCAL_OUT_DIR)/font.c
FONT_OBJ := $(LOCAL_OUT_DIR)/font.o

$(FONT_SRC): $(LOCAL_PATH)/font.txt
	$(MAKEFONT) $< $@

$(FONT_OBJ): $(FONT_SRC)
	$(CC) $(CFLAGS) $< -o $@

$(KERNEL).app: $(LOCAL_OBJ_FILES) $(FONT_OBJ) $(LOCAL_PATH)/nasmfunc.s
	$(AS) $(LOCAL_PATH)/nasmfunc.s -f elf32 -o $(LOCAL_OUT_DIR)/nasmfunc.o
	$(LD) $(LDFLAGS) $(LOCAL_OBJ_FILES) $(FONT_OBJ) $(LOCAL_OUT_DIR)/nasmfunc.o $(LIBPATH)/golibc.lib -o $(KERNEL).elf -Map=$(KERNEL).map
	$(ELF2APP) $(KERNEL).elf $(KERNEL).app

$(KERNEL).sys : $(LOCAL_PATH)/asmhead.s $(KERNEL).app
	$(AS) $(LOCAL_PATH)/asmhead.s -o $(LOCAL_OUT_DIR)/asmhead.bin
	cat $(LOCAL_OUT_DIR)/asmhead.bin $(KERNEL).app > $(KERNEL).sys

