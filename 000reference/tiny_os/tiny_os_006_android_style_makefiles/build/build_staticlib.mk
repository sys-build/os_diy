
intermediates := $(OUT_BASE_DIR)/$(LOCAL_PATH)
include build/binary.mk

staticlib := $(intermediates)/$(LOCAL_MODULE).a

$(staticlib): $(all_objects)
	$(AR) r $@ $^

