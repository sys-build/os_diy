
c_objects := $(addprefix $(intermediates)/,$(LOCAL_SRC_FILES:.c=.o))

ifneq ($(strip $(c_objects)),)
$(c_objects): $(intermediates)/%.o: $(LOCAL_PATH)/%.c
	@mkdir -p $(dir $@)
	$(CC) $(CFLAGS) -c -o $@ $<
endif

asm_objects := $(addprefix $(intermediates)/,$(LOCAL_ASM_FILES:.s=.o))

ifneq ($(strip $(asm_objects)),)
$(asm_objects): $(intermediates)/%.o: $(LOCAL_PATH)/%.s
	@mkdir -p $(dir $@)
	$(AS) -f elf32 -o $@ $<
endif

font_objects := $(addprefix $(intermediates)/,$(LOCAL_FONT_FILES:.txt=.o))

ifneq ($(strip $(font_objects)),)
$(font_objects): $(intermediates)/%.o: $(LOCAL_PATH)/%.txt
	@mkdir -p $(dir $@)
	$(MAKEFONT) $< $(basename $@).c
	$(CC) $(CFLAGS) -c -o $@ $(basename $@).c
endif

all_objects := $(c_objects) $(asm_objects) $(font_objects)

