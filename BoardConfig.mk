#
# Copyright (C) 2013 The CyanogenMod Project
#
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

# Audio Options
BOARD_USES_GENERIC_AUDIO := false
BOARD_USES_ALSA_AUDIO := true
BOARD_SUPPORT_NVOICE := true

# inherit from the proprietary version
-include vendor/viewsonic/n710/BoardConfigVendor.mk

# Board nameing
TARGET_NO_RADIOIMAGE := true
TARGET_BOARD_PLATFORM := tegra
TARGET_BOOTLOADER_BOARD_NAME := n710

# Target arch settings
TARGET_NO_BOOTLOADER := true
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a9
TARGET_CPU_SMP := true
TARGET_ARCH := arm
ARCH_ARM_HAVE_32_BYTE_CACHE_LINES := true
ARCH_ARM_HAVE_TLS_REGISTER := true

# Avoid the generation of ldrcc instructions
NEED_WORKAROUND_CORTEX_A9_745320 := true

# Boot/Recovery image settings
BOARD_KERNEL_CMDLINE := 
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048

# EGL settings
USE_OPENGL_RENDERER := true
BOARD_EGL_CFG := device/viewsonic/n710/prebuilt/lib/egl/egl.cfg

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 8388608
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 805306368
BOARD_USERDATAIMAGE_PARTITION_SIZE := 805306368
BOARD_FLASH_BLOCK_SIZE := 4096

# Kernel
TARGET_PREBUILT_KERNEL := device/viewsonic/n710/kernel

# Required for CWM
BOARD_HAS_NO_SELECT_BUTTON := true


# SELINUX Defines
BOARD_SEPOLICY_DIRS := \
    device/viewsonic/n710/selinux

BOARD_SEPOLICY_UNION := \
    file_contexts \
    file.te \
    device.te \
    domain.te

BOARD_HDMI_MIRROR_MODE := Scale
BOARD_HAS_DIDIM := true
	
#Camera
#USE_CAMERA_STUB := false
#BOARD_NEEDS_MEMORYHEAPPMEM := true
#COMMON_GLOBAL_CFLAGS += -DICS_CAMERA_BLOB -DDISABLE_HW_ID_MATCH_CHECK 
#COMMON_GLOBAL_CPPFLAGS += -DDISABLE_HW_ID_MATCH_CHECK

# Wifi related defines
USES_TI_MAC80211 := true
ifdef USES_TI_MAC80211
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
WPA_SUPPLICANT_VERSION           := VER_0_8_X_TI
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_wl12xx
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_wl12xx
#PRODUCT_WIRELESS_TOOLS := true
BOARD_WLAN_DEVICE                := wl12xx_mac80211
BOARD_SOFTAP_DEVICE              := wl12xx_mac80211
WIFI_DRIVER_MODULE_PATH          := "/system/lib/modules/wl12xx_sdio.ko"
WIFI_DRIVER_MODULE_NAME          := "wl12xx_sdio"
WIFI_FIRMWARE_LOADER             := ""
COMMON_GLOBAL_CFLAGS             += -DUSES_TI_MAC80211
endif

# BT
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_TI := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/viewsonic/n710/bluetooth
BOARD_BLUETOOTH_DEFAULT_NAME := $(PRODUCT_MODEL)

# Sensors invensense
BOARD_USES_GENERIC_INVENSENSE := false
