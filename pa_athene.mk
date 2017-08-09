# Copyright (C) 2015 The CyanogenMod Project
#           (C) 2017 The LineageOS Project
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

# Check for target product
ifeq (pa_athene,$(TARGET_PRODUCT))

# Inherit some common AOSPA stuff.

# Set bootanimation to 1080p display.
TARGET_BOOT_ANIMATION_RES := 1080

# Inherit from our common CAF device tree.
include device/qcom/common/common.mk

# Inherit the main configuration from our vendor.
include vendor/pa/main.mk

$(call inherit-product, device/motorola/athene/full_athene.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := athene
PRODUCT_NAME := pa_athene
PRODUCT_BRAND := Motorola
PRODUCT_MANUFACTURER := Motorola
PRODUCT_RELEASE_NAME := athene

endif
