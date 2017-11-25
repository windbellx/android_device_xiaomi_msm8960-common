#
# Copyright (C) 2011 The Android Open-Source Project
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

COMMON_PATH := device/xiaomi/msm8960-common

TARGET_SPECIFIC_HEADER_PATH := $(COMMON_PATH)/include

TARGET_NO_RADIOIMAGE := true
TARGET_NO_BOOTLOADER := true

QCOM_BOARD_PLATFORMS                         := msm8960
TARGET_BOARD_PLATFORM                          := msm8960
TARGET_BOOTLOADER_BOARD_NAME      := MSM8960

# Architecture
TARGET_ARCH_VARIANT_CPU    := cortex-a9
TARGET_CPU_ABI             := armeabi-v7a
TARGET_CPU_ABI2            := armeabi
TARGET_CPU_SMP             := true
TARGET_CPU_VARIANT         := krait
TARGET_ARCH                := arm
TARGET_ARCH_VARIANT        := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true
BOARD_USES_QCOM_HARDWARE   := true

# Krait optimizations
TARGET_USE_QCOM_BIONIC_OPTIMIZATION := true
TARGET_USE_KRAIT_PLD_SET             := true
TARGET_KRAIT_BIONIC_PLDOFFS          := 10
TARGET_KRAIT_BIONIC_PLDTHRESH        := 10
TARGET_KRAIT_BIONIC_BBTHRESH         := 64
TARGET_KRAIT_BIONIC_PLDSIZE          := 64

BOARD_KERNEL_BASE    := 0x80200000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_RAMDISK_OFFSET := 0x02000000
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02000000
BOARD_KERNEL_CMDLINE   := console=null androidboot.hardware=qcom ehci-hcd.park=3 maxcpus=2 androidboot.bootdevice=msm_sdcc.1 androidboot.selinux=permissive
BOARD_KERNEL_IMAGE_NAME := zImage

TARGET_PREBUILT_KERNEL :=

# Wifi
BOARD_HAS_QCOM_WLAN              := true
BOARD_WLAN_DEVICE                := qcwcn
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
WIFI_DRIVER_MODULE_NAME          := "wlan"
WIFI_DRIVER_FW_PATH_STA          := "sta"
WIFI_DRIVER_FW_PATH_AP           := "ap"
TARGET_USES_QCOM_WCNSS_QMI       := true

# FM
TARGET_FM_LEGACY_PATCHLOADER := true
AUDIO_FEATURE_ENABLED_FM_POWER_OPT := true
BOARD_HAVE_QCOM_FM := true

BOARD_EGL_CFG := $(COMMON_PATH)/rootdir/etc/egl.cfg

TARGET_USES_QCOM_BSP        := true

# QCOM enhanced A/V
TARGET_ENABLE_QC_AV_ENHANCEMENTS := true

# Display
TARGET_USES_ION             := true
USE_OPENGL_RENDERER         := true
TARGET_USES_C2D_COMPOSITION := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3

# Audio
BOARD_USES_ALSA_AUDIO                   := true
AUDIO_FEATURE_ENABLED_PROXY_DEVICE		:= false
AUDIO_FEATURE_ENABLED_COMPRESS_VOIP		:= false
# GPS
#The below will be needed if we ever want to build GPS HAL from source
#TARGET_PROVIDES_GPS_LOC_API := true
#BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := $(TARGET_BOARD_PLATFORM)
#TARGET_NO_RPC := true

# Camera
BOARD_GLOBAL_CFLAGS       += -DQCOM_BSP

# Bluetooth
BOARD_HAVE_BLUETOOTH                        := true
BOARD_HAVE_BLUETOOTH_QCOM                   := true
BLUETOOTH_HCI_USE_MCT                       := true

# Webkit
ENABLE_WEBGL            := true
TARGET_FORCE_CPU_UPLOAD := true

# Recovery
RECOVERY_FSTAB_VERSION           := 2
TARGET_RECOVERY_PIXEL_FORMAT     := "RGBX_8888"
BOARD_HAS_NO_SELECT_BUTTON       := true

TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_BOOTIMAGE_PARTITION_SIZE     := 0x01E00000 # 30MB 31457280B
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00F00000 # 15MB 15728640B
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 1073741824 # 1024MB
BOARD_USERDATAIMAGE_PARTITION_SIZE := 13946043904 #
BOARD_PERSISTIMAGE_PARTITION_SIZE  := 8388608	 # 8MB
BOARD_CACHEIMAGE_PARTITION_SIZE    := 402653184  # 384MB
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE  := ext4
BOARD_FLASH_BLOCK_SIZE             := 131072 # (BOARD_KERNEL_PAGESIZE * 64)

BOARD_USES_SECURE_SERVICES := true

USE_DEVICE_SPECIFIC_CAMERA:= true
USE_DEVICE_SPECIFIC_QCOM_PROPRIETARY:= true

HAVE_ADRENO_SOURCE:= false

SUPERUSER_EMBEDDED:= true

#PRODUCT_BOOT_JARS += \
    qcom.fmradio \
    qcmediaplayer \
    org.codeaurora.Performance \
    tcmiface

# Include an expanded selection of fonts
EXTENDED_FONT_FOOTPRINT := true

BOARD_USES_LEGACY_MMAP := true

TARGET_NEEDS_PLATFORM_TEXT_RELOCATIONS := true

MALLOC_SVELTE := true

## TWRP
#RECOVERY_VARIANT					:= twrp
TW_THEME							:= portrait_hdpi
RECOVERY_SDCARD_ON_DATA				:= true
TW_FLASH_FROM_STORAGE				:= true
TW_INTERNAL_STORAGE_PATH			:= "/data/media/0"
TW_INTERNAL_STORAGE_MOUNT_POINT		:= "data"
TW_TARGET_USES_QCOM_BSP				:= true
RECOVERY_GRAPHICS_USE_LINELENGTH	:= true
# TW_DEFAULT_LANGUAGE					:= en_US
TW_NEW_ION_HEAP						:= false
TW_DEFAULT_BRIGHTNESS				:= 15
#TW_NEVER_UNMOUNT_SYSTEM				:= true
