# Copyright (C) 2016 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# SELinux
-include device/qcom/sepolicy/sepolicy.mk

TARGET_SPECIFIC_HEADER_PATH := device/htc/ace/include

# inherit ace vendor
-include vendor/htc/ace/BoardConfigVendor.mk

# General
TARGET_BOARD_PLATFORM := msm7x30
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := scorpion
TARGET_USES_QCOM_BSP := true

COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE
BOARD_USES_QCOM_HARDWARE := true

# Use CLANG
USE_CLANG_PLATFORM_BUILD := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := spade
TARGET_NO_BOOTLOADER := true

# CM Hardware
BOARD_HARDWARE_CLASS := device/htc/ace/cmhw

# Use data partition size here because we are using
# it as /system
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1232072704
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1232072704
BOARD_BOOTIMAGE_PARTITION_SIZE := 4194304
BOARD_FLASH_BLOCK_SIZE := 262144

# Build EXT4 and F2FS tools
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Keep ro.product.device as ace to keep camera blobs happy.
TARGET_VENDOR_DEVICE_NAME := ace

# Kernel
TARGET_KERNEL_CONFIG := ace_defconfig
TARGET_KERNEL_SOURCE := kernel/htc/msm7x30
BOARD_KERNEL_CMDLINE := no_console_suspend=1 androidboot.selinux=permissive androidboot.hardware=htc7x30
BOARD_KERNEL_RECOVERY_CMDLINE := $(BOARD_KERNEL_CMDLINE) msmsdcc_power_gpio=88
BOARD_KERNEL_BASE := 0x4000000
BOARD_KERNEL_PAGE_SIZE := 4096

# Audio
BOARD_HAVE_HTC_AUDIO := true
BOARD_HAVE_PRE_KITKAT_AUDIO_POLICY_BLOB := true # Check later
BOARD_USES_LEGACY_ALSA_AUDIO := true
AUDIO_FEATURE_ENABLED_INCALL_MUSIC := true
AUDIO_FEATURE_ENABLED_COMPRESS_VOIP := false
AUDIO_FEATURE_ENABLED_PROXY_DEVICE := false

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/htc/ace/bluetooth/include
BOARD_BLUEDROID_VENDOR_CONF := device/htc/ace/bluetooth/vnd_ace.txt
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUETOOTH_USES_HCIATTACH_PROPERTY := false

# Spade DSP profile
COMMON_GLOBAL_CFLAGS += -DWITH_SPADE_DSP_PROFILE

# Recovery
TARGET_RECOVERY_DEVICE_DIRS += device/htc/ace
TARGET_RECOVERY_FSTAB := device/htc/ace/rootdir/fstab.htc7x30
TARGET_RECOVERY_DEVICE_DIRS += device/htc/ace
TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888
BRIGHTNESS_SYS_FILE := /sys/devices/platform/leds-pm8058/leds/keyboard-backlight/brightness

# Vold
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun0/file
BOARD_VOLD_MAX_PARTITIONS := 36

# Boot Animation
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true
TARGET_BOOTANIMATION_USE_RGB565 := true

# Display
TARGET_DISPLAY_USE_RETIRE_FENCE := true
TARGET_USES_ION := true
BOARD_USES_PMEM_ADSP := true
TARGET_USES_C2D_COMPOSITION := true

# GPS
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 1240
USE_DEVICE_SPECIFIC_GPS := true

# Media
USE_DEVICE_SPECIFIC_CAMERA := true
COMMON_GLOBAL_CFLAGS += -DICS_CAMERA_BLOB -DNO_UPDATE_PREVIEW
TARGET_RELEASE_CPPFLAGS += -DNEEDS_VECTORIMPL_SYMBOLS

# Misc
BOARD_NEEDS_MEMORYHEAPPMEM := true
TARGET_PROVIDES_LIBLIGHT := true
BLOCK_BASED_OTA := false
TARGET_NEEDS_NON_PIE_SUPPORT := true
TARGET_DISABLE_ARM_PIE := true
BOARD_PROVIDES_LIBRIL := true
BOARD_CANT_BUILD_RECOVERY_FROM_BOOT_PATCH := true

# Use dlmalloc instead of jemalloc because it's
# supposedly better in single-threaded applications
# http://blog.poweredbytoast.com/memory-allocators
MALLOC_IMPL := dlmalloc

# This file is for bcmdhd wifi since so many HTC 8660 devices use it
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE                := bcmdhd
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
WIFI_BAND                        := 802_11_ABG
WIFI_DRIVER_FW_PATH_STA          := "/system/vendor/firmware/fw_bcmdhd.bin"
WIFI_DRIVER_FW_PATH_AP           := "/system/vendor/firmware/fw_bcmdhd_apsta.bin"
WIFI_DRIVER_FW_PATH_PARAM        := "/sys/module/bcmdhd/parameters/firmware_path"
WPA_SUPPLICANT_VERSION           := VER_0_8_X

# rmt_storage
BOARD_USES_LEGACY_MMAP := true

# Override healthd HAL
BOARD_HAL_STATIC_LIBRARIES := libhealthd.msm7x30

# Enable dex-preoptimization to speed up first boot sequence
ifeq ($(HOST_OS),linux)
ifeq ($(WITH_DEXPREOPT),)
	WITH_DEXPREOPT := true
endif
endif

# TWRP
TW_THEME := portrait_mdpi
RECOVERY_SDCARD_ON_DATA := true
BOARD_HAS_NO_REAL_SDCARD := true
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_INCLUDE_CRYPTO := true
TW_NO_SCREEN_BLANK := true
TW_INCLUDE_DUMLOCK := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_NO_USB_STORAGE := true
TW_NO_CPU_TEMP := true
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/htc_lpm/lpm_mode
