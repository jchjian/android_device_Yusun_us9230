#
# Copyright (C) 2012 The CyanogenMod Project
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

# Board
TARGET_NO_BOOTLOADER := true
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a9
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_HAVE_32_BYTE_CACHE_LINES := true
ARCH_ARM_USE_NON_NEON_MEMCPY := true

# Board naming
TARGET_NO_RADIOIMAGE := true
TARGET_BOARD_PLATFORM := tegra
TARGET_TEGRA_VERSION := ap30
TARGET_BOOTLOADER_BOARD_NAME := us9230

# Optimization build flags
TARGET_GLOBAL_CFLAGS += -mtune=cortex-a9 -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a9 -mfpu=neon -mfloat-abi=softfp

# Some proprietary libs need reservedVectorImpl variants
COMMON_GLOBAL_CFLAGS += -DMR0_AUDIO_BLOB -DNEEDS_VECTORIMPL_SYMBOLS

# Audio
USE_PROPRIETARY_AUDIO_EXTENSIONS := true
BOARD_USES_GENERIC_AUDIO := false
#BOARD_USES_ALSA_AUDIO := false
#BOARD_USES_TINY_AUDIO_HW := false
#BOARD_HAVE_PRE_KITKAT_AUDIO_BLOB := true
#BOARD_HAVE_PRE_KITKAT_AUDIO_POLICY_BLOB := true

# ICS_AUDIO_BLOB  MR1_AUDIO_BLOB

#USE_LEGACY_AUDIO_POLICY := 1
#TARGET_RELEASE_CPPFLAGS += -DMR0_AUDIO_BLOB
#$BOARD_SUPPORT_NVAUDIOFX := true
#BOARD_SUPPORT_NVOICE := true
#BOARD_USES_TFA := true

# EGL
USE_OPENGL_RENDERER := true
BOARD_EGL_NEEDS_LEGACY_FB := true
# No EGL_KHR_gl_colorspace
BOARD_EGL_WORKAROUND_BUG_10194508 := true
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true
BOARD_USE_MHEAP_SCREENSHOT := true
BOARD_EGL_SKIP_FIRST_DEQUEUE := true
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true
BOARD_EGL_CFG := device/Yusun/us9230/configs/egl.cfg

# Avoid the generation of ldrcc instructions
NEED_WORKAROUND_CORTEX_A9_745320 := true

BOARD_KERNEL_CMDLINE := 
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048

TARGET_USERIMAGES_USE_EXT4 := true

# fix this up by examining /proc/mtd on a running device
#BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
#BOARD_RECOVERYIMAGE_PARTITION_SIZE := 8388608
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 536870912
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2516582400
BOARD_FLASH_BLOCK_SIZE := 4096

# Kernel
TARGET_PREBUILT_KERNEL := device/Yusun/us9230/kernel

# Sensors
BOARD_USES_GENERIC_INVENSENSE := false

# Video
BOARD_HAVE_PIXEL_FORMAT_INFO := true

# Wifi related defines
USES_TI_MAC80211 := true

# WIFI
ifdef USES_TI_MAC80211
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
WPA_SUPPLICANT_VERSION := VER_0_8_X_TI
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_WLAN_DEVICE := wl12xx_mac80211
BOARD_SOFTAP_DEVICE := wl12xx_mac80211
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/wl12xx_sdio.ko"
WIFI_DRIVER_MODULE_NAME := "wl12xx_sdio"
WIFI_FIRMWARE_LOADER := ""
COMMON_GLOBAL_CFLAGS += -DUSES_TI_MAC80211
endif

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_TI := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/Yusun/us9230/bluetooth

# We need to adjust init.rc as per stock for things to work
TARGET_PROVIDES_INIT_RC := true
# Skip droiddoc build to save build time
BOARD_SKIP_ANDROID_DOC_BUILD := true

# Vold
BOARD_VOLD_MAX_PARTITIONS := 12
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
#BOARD_VOLD_DISC_HAS_MULTIPLE_MAJORS := true
#BOARD_USE_USB_MASS_STORAGE_SWITCH := true

# Battery
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_BATTERY_DEVICE_NAME := battery

# RECOVERY
BOARD_RECOVERY_SWIPE := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
BOARD_CUSTOM_GRAPHICS := ../../../device/Yusun/us9230/recovery/graphics.c
RECOVERY_GRAPHICS_USE_LINELENGTH := true
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_RECOVERY_FSTAB := device/Yusun/us9230/recovery/recovery.fstab
BOARD_HAS_LARGE_FILESYSTEM := true
RECOVERY_USE_VIRTUAL_KEY := true

# UMS
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/f_mass_storage/lun/file"

# SELinux
BOARD_SEPOLICY_DIRS += \
        device/Yusun/us9230/sepolicy

