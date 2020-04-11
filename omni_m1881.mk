#
# Copyright (C) 2017 The Android Open Source Project
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

# Release name
PRODUCT_RELEASE_NAME := m1881

$(call inherit-product, build/target/product/embedded.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Time Zone data for recovery
PRODUCT_COPY_FILES += \
    bionic/libc/zoneinfo/tzdata:recovery/root/system/usr/share/zoneinfo/tzdata

PRODUCT_PROPERTY_OVERRIDES += \
    sys.usb.controller=a800000.dwc3 \
    sys.usb.rndis.func.name=rndis_bam \
    sys.usb.rmnet.func.name=rmnet_bam

## Device identifier. This must come after all inclusions
PRODUCT_NAME := omni_m1881
PRODUCT_DEVICE := m1881
PRODUCT_MANUFACTURER := meizu
PRODUCT_BRAND := Meizu
PRODUCT_MODEL := 15

TARGET_VENDOR_PRODUCT_NAME := m1881
TARGET_VENDOR_DEVICE_NAME := m1881
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=m1881 PRODUCT_NAME=m1881
