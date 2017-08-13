# Enable dex-preoptimization to speed up first boot sequence
ifeq ($(HOST_OS),linux)
ifeq ($(WITH_DEXPREOPT),)
	WITH_DEXPREOPT := true
endif
endif