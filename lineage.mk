# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017 The LineageOS Project
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

$(call inherit-product, device/htc/ace/full_ace.mk)

# Inherit common LineageOS configuration
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_ace
PRODUCT_DEVICE := ace
PRODUCT_BRAND := htc_wwe
PRODUCT_MANUFACTURER := HTC
PRODUCT_MODEL := HTC Desire HD
PRODUCT_GMS_CLIENTID_BASE := android-htc-rev

# Keep ro.product.device as ace to keep camera blobs happy.
TARGET_VENDOR_DEVICE_NAME := ace

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=htc_ace \
    BUILD_FINGERPRINT="htc_wwe/htc_ace/ace:$(PLATFORM_VERSION)/$(BUILD_ID)/$(shell date +%Y%m%d%H%M%S):$(TARGET_BUILD_VARIANT)/test-keys" \
    PRIVATE_BUILD_DESC="htc_ace-$(TARGET_BUILD_VARIANT) $(PLATFORM_VERSION) $(BUILD_ID) $(shell date +%Y%m%d%H%M%S) test-keys"
