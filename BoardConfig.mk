#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017 The LineageOS Project
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

# inherit from common sdm660-common
-include device/meizu/sdm660-common/BoardConfigCommon.mk

DEVICE_PATH := device/meizu/m1881

# Assertions
TARGET_OTA_ASSERT_DEVICE := M1881,m1881,15

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

# Filesystem
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x100000000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 55155064320

# Kernel
BOARD_KERNEL_CMDLINE += g_android.luns=1 g_android.removable=1 g_android.cdrom=1
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/Image.gz-dtb

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# Sepolicy
BOARD_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy

# inherit from the proprietary version
-include vendor/meizu/m1881/BoardConfigVendor.mk