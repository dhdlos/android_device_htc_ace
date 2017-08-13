# Audio DSP Profiles
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/AdieHWCodec.csv:system/etc/AdieHWCodec.csv \
	$(LOCAL_PATH)/audio/AudioBTID.csv:system/etc/AudioBTID.csv \
	$(LOCAL_PATH)/audio/AIC3254_REG.csv:system/etc/AIC3254_REG.csv \
	$(LOCAL_PATH)/audio/AIC3254_REG_XD.csv:system/etc/AIC3254_REG_XD.csv \
	$(LOCAL_PATH)/configs/CodecDSPID.txt:system/etc/CodecDSPID.txt \
	$(LOCAL_PATH)/audio/HP_Audio.csv:system/etc/HP_Audio.csv \
	$(LOCAL_PATH)/configs/HP_Video.csv:system/etc/HP_Video.csv \
	$(LOCAL_PATH)/configs/SPK_Combination.csv:system/etc/SPK_Combination.csv \
	$(LOCAL_PATH)/audio/Sound_Bass_Booster.txt:system/etc/soundimage/Sound_Bass_Booster.txt \
	$(LOCAL_PATH)/audio/Sound_Blues.txt:system/etc/soundimage/Sound_Blues.txt \
	$(LOCAL_PATH)/audio/Sound_Classical.txt:system/etc/soundimage/Sound_Classical.txt \
	$(LOCAL_PATH)/audio/Sound_Country.txt:system/etc/soundimage/Sound_Country.txt \
	$(LOCAL_PATH)/audio/Sound_Dolby_A_HP.txt:system/etc/soundimage/Sound_Dolby_A_HP.txt \
	$(LOCAL_PATH)/audio/Sound_Dolby_A_SPK.txt:system/etc/soundimage/Sound_Dolby_A_SPK.txt \
	$(LOCAL_PATH)/audio/Sound_Dolby_V_HP.txt:system/etc/soundimage/Sound_Dolby_V_HP.txt \
	$(LOCAL_PATH)/audio/Sound_Dolby_V_SPK.txt:system/etc/soundimage/Sound_Dolby_V_SPK.txt \
	$(LOCAL_PATH)/audio/Sound_Dualmic.txt:system/etc/soundimage/Sound_Dualmic.txt \
	$(LOCAL_PATH)/audio/Sound_Dualmic_EP.txt:system/etc/soundimage/Sound_Dualmic_EP.txt \
	$(LOCAL_PATH)/audio/Sound_Dualmic_SPK.txt:system/etc/soundimage/Sound_Dualmic_SPK.txt \
	$(LOCAL_PATH)/audio/Sound_Jazz.txt:system/etc/soundimage/Sound_Jazz.txt \
	$(LOCAL_PATH)/audio/Sound_Latin.txt:system/etc/soundimage/Sound_Latin.txt \
	$(LOCAL_PATH)/audio/Sound_New_Age.txt:system/etc/soundimage/Sound_New_Age.txt \
	$(LOCAL_PATH)/audio/Sound_Original.txt:system/etc/soundimage/Sound_Original.txt \
	$(LOCAL_PATH)/audio/Sound_Original_SPK.txt:system/etc/soundimage/Sound_Original_SPK.txt \
	$(LOCAL_PATH)/audio/Sound_Piano.txt:system/etc/soundimage/Sound_Piano.txt \
	$(LOCAL_PATH)/audio/Sound_Pop.txt:system/etc/soundimage/Sound_Pop.txt \
	$(LOCAL_PATH)/audio/Sound_R_B.txt:system/etc/soundimage/Sound_R_B.txt \
	$(LOCAL_PATH)/audio/Sound_Rock.txt:system/etc/soundimage/Sound_Rock.txt \
	$(LOCAL_PATH)/audio/Sound_SRS_A_HP.txt:system/etc/soundimage/Sound_SRS_A_HP.txt \
	$(LOCAL_PATH)/audio/Sound_SRS_A_SPK.txt:system/etc/soundimage/Sound_SRS_A_SPK.txt \
	$(LOCAL_PATH)/audio/Sound_SRS_V_HP.txt:system/etc/soundimage/Sound_SRS_V_HP.txt \
	$(LOCAL_PATH)/audio/Sound_SRS_V_SPK.txt:system/etc/soundimage/Sound_SRS_V_SPK.txt \
	$(LOCAL_PATH)/audio/Sound_Treble_Booster.txt:system/etc/soundimage/Sound_Treble_Booster.txt \
	$(LOCAL_PATH)/audio/Sound_Vocal_Booster.txt:system/etc/soundimage/Sound_Vocal_Booster.txt \
	$(LOCAL_PATH)/audio/audio_policy.conf:system/etc/audio_policy.conf

# Audio
PRODUCT_PACKAGES += \
	audio.a2dp.default \
	audio.primary.msm7x30 \
	libaudio-resampler \
	libaudioparameter

# Audio Props - not sure about this (unused?)
PRODUCT_PROPERTY_OVERRIDES += \
    media.a1026.nsForVoiceRec=0 \
    media.a1026.enableA1026=0 \
    htc.audio.alt.enable=0 \
    htc.audio.hac.enable=1

# Audio
PRODUCT_PROPERTY_OVERRIDES += \
	persist.sys.media.use-awesome=true