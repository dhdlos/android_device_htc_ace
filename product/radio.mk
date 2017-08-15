# RIL
PRODUCT_PROPERTY_OVERRIDES += \
	rild.libpath=/system/lib/libhtc_ril.so \
	ro.ril.ecc.HTC-GCC=999,112,997 \
	ro.ril.ecc.HTC-WWE=999 \
	ro.ril.ecc.HTC-ELL=92,93,94 \
	ro.ril.enable.a52.HTC-ITA=1 \
	ro.ril.enable.a53.HTC-ITA=1 \
	ro.ril.enable.a52=0 \
	ro.ril.enable.a53=1 \
	ro.ril.disable.fd.plmn.prefix=23402,23410,23411 \
	ro.ril.enable.sdr=1 \
	ro.ril.enable.amr.wideband=0 \
	ro.ril.enable.dtm=0 \
	ro.ril.gprsclass=12 \
	ro.ril.hsdpa.category=10 \
	ro.ril.hsupa.category=6 \
	ro.ril.hsxpa=2 \
	ro.ril.def.agps.mode=2 \
	ro.ril.disable.power.collapse=1

# Radio
PRODUCT_PROPERTY_OVERRIDES += \
	ro.telephony.default_network=0 \
	mobiledata.interfaces=gannet0,rmnet0,rmnet1,rmnet2 \
	persist.data.qmi.adb_logmask=0 \
	ro.use_data_netmgrd=true

# Permissions
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml