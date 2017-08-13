# Keylayouts
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/keychars/atmel-touchscreen.kcm:system/usr/keychars/atmel-touchscreen.kcm \
	$(LOCAL_PATH)/keychars/synaptics-rmi-touchscreen.kcm:system/usr/keychars/synaptics-rmi-touchscreen.kcm \
	$(LOCAL_PATH)/keychars/elan-touchscreen.kcm:system/usr/keychars/elan-touchscreen.kcm \
	$(LOCAL_PATH)/keylayout/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl \
	$(LOCAL_PATH)/keylayout/spade-keypad.kl:system/usr/keylayout/spade-keypad.kl \
	$(LOCAL_PATH)/keylayout/atmel-touchscreen.kl:system/usr/keylayout/atmel-touchscreen.kl \
	$(LOCAL_PATH)/keylayout/synaptics-rmi-touchscreen.kl:system/usr/keylayout/synaptics-rmi-touchscreen.kl \
	$(LOCAL_PATH)/keylayout/elan-touchscreen.kl:system/usr/keylayout/elan-touchscreen.kl

# IDCs
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/idc/atmel-touchscreen.idc:system/usr/idc/atmel-touchscreen.idc \
	$(LOCAL_PATH)/idc/spade-keypad.idc:system/usr/idc/spade-keypad.idc \
	$(LOCAL_PATH)/idc/synaptics-rmi-touchscreen.idc:system/usr/idc/synaptics-rmi-touchscreen.idc \
	$(LOCAL_PATH)/idc/elan-touchscreen.idc:system/usr/idc/elan-touchscreen.idc