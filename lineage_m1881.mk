# 
# Copyright (C) 2017-2018 The LineageOS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from jason device
$(call inherit-product, device/meizu/m1881/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_m1881
PRODUCT_BRAND := Meizu
PRODUCT_DEVICE := m1881
PRODUCT_MANUFACTURER := Meizu
PRODUCT_MODEL := 15

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="m1881" \
    PRODUCT_NAME="meizu_15_CN" \
    PRIVATE_BUILD_DESC="meizu_15_CN-user 7.1.1 NGI77B 1523428748 release-keys"

BUILD_FINGERPRINT := "Meizu/meizu_15_CN/15:7.1.1/NGI77B/1523428748:user/release-keys"
