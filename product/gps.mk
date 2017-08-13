$(call inherit-product, device/common/gps/gps_eu_supl.mk)

# GPS
PRODUCT_PACKAGES += \
	librpc \
	gps.msm7x30

# Permissions
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml