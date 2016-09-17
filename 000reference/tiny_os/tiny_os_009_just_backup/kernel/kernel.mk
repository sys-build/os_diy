
LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE := kernel

LOCAL_SRC_FILES := \
    bootpack.c \
    dsctbl.c \
    fifo.c \
    graphic.c \
    int.c \
    keyboard.c \
    mouse.c \
    memory.c \
    sheet.c \

LOCAL_ASM_FILES := \
    nasmfunc.s \

LOCAL_FONT_FILES := \
    font.txt \

include $(BUILD_TINYAPP)

### build ipl.bin
$(OUT_BASE_DIR)/$(LOCAL_PATH)/ipl.bin: $(LOCAL_PATH)/ipl.s
	@mkdir -p $(dir $@)
	$(AS) -o $@ $<

### build asmhead.bin
$(OUT_BASE_DIR)/$(LOCAL_PATH)/asmhead.bin: $(LOCAL_PATH)/asmhead.s
	@mkdir -p $(dir $@)
	$(AS) -o $@ $<

### build kernel.sys
$(OUT_BASE_DIR)/$(LOCAL_PATH)/kernel.sys: \
        $(OUT_BASE_DIR)/$(LOCAL_PATH)/asmhead.bin \
        $(OUT_BASE_DIR)/$(LOCAL_PATH)/kernel.app
	@mkdir -p $(dir $@)
	cat $^ > $@

