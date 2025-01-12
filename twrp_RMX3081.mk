#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 TeamWin Recovery Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from the Device Tree itself.
$(call inherit-product, device/realme/RMX3081/device.mk)

# Inherit from PBRP-common stuff, if building PBRP.
$(call inherit-product, vendor/pb/config/common.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Inherit from this product for devices that support only 64-bit apps using:
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Device Target Name
PRODUCT_RELEASE_NAME := RMX3081

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := RMX3081
PRODUCT_NAME := twrp_RMX3081
PRODUCT_BRAND := realme
PRODUCT_MODEL := realme 8 Pro
PRODUCT_MANUFACTURER := realme
