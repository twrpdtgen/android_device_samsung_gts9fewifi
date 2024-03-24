#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from gts9fewifi device
$(call inherit-product, device/samsung/gts9fewifi/device.mk)

PRODUCT_DEVICE := gts9fewifi
PRODUCT_NAME := omni_gts9fewifi
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-X510
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="gts9fewifixx-user 13 TP1A.220624.014 X510XXS2BXB3 release-keys"

BUILD_FINGERPRINT := samsung/gts9fewifixx/gts9fewifi:13/TP1A.220624.014/X510XXS2BXB3:user/release-keys
