
define my-dir
$(strip \
  $(eval LOCAL_MODULE_MAKEFILE := $$(lastword $$(MAKEFILE_LIST))) \
  $(patsubst %/,%,$(dir $(LOCAL_MODULE_MAKEFILE))) \
 )
endef


