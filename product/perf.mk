# ART
PRODUCT_PROPERTY_OVERRIDES += \
	dalvik.vm.dex2oat-filter=balanced \
	dalvik.vm.dex2oat-swap=false \
	dalvik.vm.image-dex2oat-filter=speed

# For applications to determine if they should turn off specific memory-intensive
# features that work poorly on low-memory devices.
PRODUCT_PROPERTY_OVERRIDES += \
	ro.config.low_ram=true \
	persist.sys.force_highendgfx=true

# Memory
PRODUCT_PROPERTY_OVERRIDES += \
	ro.sys.fw.bg_apps_limit=7 \
	ro.config.max_starting_bg=4 \
	config.disable_atlas=true