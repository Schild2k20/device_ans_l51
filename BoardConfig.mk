#
# Copyright (C) 2018 The TwrpBuilder Open-Source Project
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

DEVICE_PATH := device/ANS/L51
VENDOR_PATH := vendor/ANS/L51

TARGET_BOARD_PLATFORM := msm8909
TARGET_BOOTLOADER_BOARD_NAME := L51
TARGET_ARCH_VARIANT := armv7-v7a-neon
TARGET_CPU_ABI := armeabi
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi

# Recovery
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1572864000
BOARD_CACHEIMAGE_PARTITION_SIZE := 115343360
BOARD_FLASH_BLOCK_SIZE := 2048
BOARD_HAS_NO_REAL_SDCARD := true
BOARD_SUPPRESS_SECURE_ERASE := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_RECOVERY_SWIPE := true
BOARD_USES_MMCUTILS := true
BOARD_SUPPRESS_EMMC_WIPE := true
#TW_INPUT_BLACKLIST := "hbtp_vm"
#TARGET_PREBUILT_KERNEL := device/ANS/L51/prebuilt/kernel
TARGET_KERNEL_SOURCE := kernel/ANS/L51
TARGET_KERNEL_CONFIG := l51_defconfig


BOARD_KERNEL_BASE        := 0x80000000
BOARD_KERNEL_PAGESIZE    := 2048
BOARD_KERNEL_TAGS_OFFSET := 0x00001000
BOARD_KERNEL_OFFSET      := 0x00008000
BOARD_RAMDISK_OFFSET     := 0x01000000
BOARD_RAMDISK_OFFSET     := 0x01000000
BOARD_SECOND_OFFSET      := 0x00f00000
BOARD_KERNEL_CMDLINE     := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=qcom msm_rtb.filter=0x237 ehci-hcd.park=3 androidboot.selinux=permissive androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1 earlyprintk buildvariant=userdebug




# HIDL
DEVICE_MANIFEST_FILE := $(DEVICE_PATH)/manifest.xml
DEVICE_MATRIX_FILE := $(DEVICE_PATH)/compatibility_matrix.xml

-include vendor/ANS/L51/BoardConfigVendor.mk

include vendor/ANS/L51/L51-vendor.mk
