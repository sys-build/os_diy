
intermediates := $(OUT_BASE_DIR)/$(LOCAL_PATH)
include build/binary.mk

tinyapp := $(intermediates)/$(LOCAL_MODULE).app

$(tinyapp): $(all_objects) $(GOLIBC)
	@mkdir -p $(dir $@)
	$(LD) $(LDFLAGS) $^ -o $(basename $@).elf -Map=$(basename $@).map
	$(ELF2APP) $(basename $@).elf $(basename $@).app

