#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from duchamp device
$(call inherit-product, device/xiaomi/duchamp/device.mk)

PRODUCT_DEVICE := duchamp
PRODUCT_NAME := lineage_duchamp
PRODUCT_BRAND := POCO
PRODUCT_MODEL := 2311DRK48G
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="missi_phone_global_only64-user 14 UP1A.230905.011 V816.0.2.0.UNLMIXM release-keys"

BUILD_FINGERPRINT := POCO/duchamp_global/duchamp:14/UP1A.230905.011/V816.0.2.0.UNLMIXM:user/release-keys
