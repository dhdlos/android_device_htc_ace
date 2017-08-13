# Camera
PRODUCT_PACKAGES += \
	camera.msm7x30 \
	libshim_camera \
	libshim_skia \
	Snap

# Permissions
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml

# Camera
PRODUCT_PROPERTY_OVERRIDES += \
    camera2.portability.force_api=1