#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from mojito device
$(call inherit-product, device/xiaomi/mojito/device.mk)

# Inherit some LineageOS stuffs
$(call inherit-product, vendor/everest/config/common_full_phone.mk)

# Some Build Flags
TARGET_BOOT_ANIMATION_RES := 1080

# Maintainer name for Everest
EVEREST_BUILD_TYPE := OFFICIAL
EVEREST_MAINTAINER := K4LCHAKRA_&_ROMGHARTI

# Build GAPPS\Vanilla
WITH_GAPPS := true

# Quick witch (add more than one Launcher in build)
TARGET_DEFAULT_PIXEL_LAUNCHER := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := everest_mojito
PRODUCT_DEVICE := mojito
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 10
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
