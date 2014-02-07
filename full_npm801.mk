# Copyright (C) 2010 The Android Open Source Project
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

#
# This file is the build configuration for a full Android
# build for npm801 hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps).
#

TARGET_BOARD_NAME := npm801

# Inherit from those products. Most specific first.
$(call inherit-product, device/ingenic/npm801/device.mk)
# This is where we'd set a backup provider if we had one
#$(call inherit-product, device/sample/products/backup_overlay.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Discard inherited values and use our own instead.
PRODUCT_NAME := full_npm801
PRODUCT_DEVICE := npm801
PRODUCT_BRAND := Ingenic
PRODUCT_MODEL := AOSP
PRODUCT_MANUFACTURER := Ingenic
#PRODUCT_OTA_PUBLIC_KEYS := npm801
PRODUCT_CHARACTERISTICS := tablet
#PRODUCT_DEFAULT_DEV_CERTIFICATE := npm801
#PRODUCT_RESTRICT_VENDOR_FILES := true






