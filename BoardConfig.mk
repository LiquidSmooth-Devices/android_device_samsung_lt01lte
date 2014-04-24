#
# Copyright (C) 2013 The CyanogenMod Project
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

# This variable is set first, so it can be overridden
# by BoardConfigVendor.mk
-include device/samsung/lt01-common/BoardCommonConfig.mk

# RIL
COMMON_GLOBAL_CFLAGS += -DPROPERTY_PERMS_APPEND='{ "ril.ks.status", AID_SYSTEM, 0 },'

# GPS
BOARD_GPS_SET_PRIVACY := true
BOARD_HAVE_NEW_QC_GPS := true

TARGET_SPECIFIC_HEADER_PATH := device/samsung/lt01lte/include

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/lt01lte/bluetooth

# Kernel
TARGET_KERNEL_SOURCE := kernel/samsung/smdk4x12
TARGET_KERNEL_CONFIG := cyanogenmod_lt01lte_defconfig
TARGET_KERNEL_CUSTOM_TOOLCHAIN := sm-arm-eabi-4.7

# assert
TARGET_OTA_ASSERT_DEVICE := lt01lte,lt01ltexx,SM-T315

# inherit from the proprietary version
-include vendor/samsung/lt01lte/BoardConfigVendor.mk

# Recovery
TARGET_RECOVERY_FSTAB := device/samsung/lt01lte/rootdir/fstab.smdk4x12
RECOVERY_FSTAB_VERSION := 2
