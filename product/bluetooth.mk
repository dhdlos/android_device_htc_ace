# Bluetooth firmware
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/firmware/bcm4330.hcd:system/vendor/firmware/bcm4330.hcd \
    $(LOCAL_PATH)/firmware/bcm4329.hcd:system/vendor/firmware/bcm4329.hcd

# Bluetooth
PRODUCT_PACKAGES += bt_vendor.conf

# Permissions
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml

# Properties
PRODUCT_PROPERTY_OVERRIDES += \
	qcom.bluetooth.soc=smd