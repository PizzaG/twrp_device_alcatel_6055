#
# Copyright (C) 2019 The Android Open Source Project
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

LOCAL_PATH := device/alcatel/idol4

# Platform
TARGET_BOARD_PLATFORM := msm8952
TARGET_BOARD_PLATFORM_GPU := qcom-adreno510

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a9

TARGET_BOARD_SUFFIX := _64
TARGET_USES_64_BIT_BINDER := true

# Kernel
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/kernel
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=qcom msm_rtb.filter=0x237 ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1 earlyprintk androidboot.bootloader=L3CCJ0J0BX00 androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01000000 --tags_offset 0x00000100

# Partitions
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_SUPPRESS_SECURE_ERASE := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun0/file

# Recovery
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# TWRP
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_RECOVERY_SWIPE := true
BOARD_SUPPRESS_EMMC_WIPE := true
BOARD_SUPPRESS_SECURE_ERASE := true
BOARD_USES_MMCUTILS := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery/root/etc/twrp.fstab
TW_THEME := portrait_hdpi
TW_NO_SCREEN_TIMEOUT            := true
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_DEFAULT_BRIGHTNESS := 102
TW_DEFAULT_EXTERNAL_STORAGE := true
HAVE_SELINUX := true
TW_EXCLUDE_SUPERSU := true
RECOVERY_SDCARD_ON_DATA := true
BOARD_HAS_NO_REAL_SDCARD := true

# DEBUG (BOTH needed to enable logcat)
TARGET_USES_LOGD := true
TWRP_INCLUDE_LOGCAT := true

# Disable Mouse Cursor
TW_INPUT_BLACKLIST := "hbtp_vm"

# exFAT FS Support
TW_INCLUDE_FUSE_EXFAT := true
# NTFS Support
TW_INCLUDE_FUSE_NTFS := true

# Time services
BOARD_USES_QC_TIME_SERVICES := true
TARGET_RECOVERY_QCOM_RTC_FIX := true

# Encryption
TARGET_HW_DISK_ENCRYPTION := true
#TW_INCLUDE_CRYPTO := true
TARGET_KEYMASTER_WAIT_FOR_QSEE := true

## PizzaG OrangeFox Additions
# Maintainer name
OF_MAINTAINER := PizzaG
TW_DEVICE_VERSION := 1.4
#FOX_RECOVERY_INSTALL_PARTITION     := "/dev/block/platform/bootdevice/by-name/recovery"
## Extras
ANDROID_BUILD_EMBEDDED             := true
OF_DEVICE_CODE := Alcatel_Idol_4
OF_USE_MAGISKBOOT_FOR_ALL_PATCHES  := 1
OF_DISABLE_MIUI_SPECIFIC_FEATURES  := true
OF_EXTERNAL := /external_sd
OF_INTERNAL := /sdcard
OF_OTG := /usb_otg
# Put 0 to disable flashlight
#OF_FLASH := 1
OF_FLASHLIGHT_ENABLE := 1
#Front Light + Switch
OF_FL_PATH1= /sys/class/leds/torch-light1
OF_FL_PATH2= /sys/class/leds/led:switch
OF_FLASH_MAX_BRIGHTNESS := 255
OF_ALLOW_DISABLE_NAVBAR :=0
# Use this flag only if your device is A/B
OF_AB := false
# Recovery Type (It can be treble,normal,SAR) [Only for About Section]
OF_REC_TYPE := Treble
# Recovery Type (It can be A/B or A_only) [Only for About Section]
OF_DEVICE_TYPE := A_Only
