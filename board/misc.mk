# Misc
BOARD_NEEDS_MEMORYHEAPPMEM := true
TARGET_PROVIDES_LIBLIGHT := true
BLOCK_BASED_OTA := false
TARGET_NEEDS_NON_PIE_SUPPORT := true
TARGET_DISABLE_ARM_PIE := true
BOARD_PROVIDES_LIBRIL := true
BOARD_CANT_BUILD_RECOVERY_FROM_BOOT_PATCH := true

# Spade DSP profile
COMMON_GLOBAL_CFLAGS += -DWITH_SPADE_DSP_PROFILE