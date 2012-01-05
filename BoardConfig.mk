# Copyright (c) 2009, Code Aurora Forum.
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

# config.mk
#
# Product-specific compile-time definitions.
#
USE_CAMERA_STUB := true
BOARD_USES_GENERIC_AUDIO := false

BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true
BOARD_USE_QCOM_PMEM := true

# Graphics
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
BOARD_USES_ADRENO_200 := true
HAVE_ADRENO200_SOURCE := true
HAVE_ADRENO200_SC_SOURCE := true
HAVE_ADRENO200_FIRMWARE := true
TARGET_HARDWARE_3D := false
TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true
BOARD_AVOID_DRAW_TEXTURE_EXTENSION := true
TARGET_SF_NEEDS_REAL_DIMENSIONS := true
BOARD_NO_RGBX_8888 := true
BOARD_EGL_CFG := device/semc/es209ra/egl.cfg
#BOARD_HAS_LIMITED_EGL := true
#TARGET_USES_16BPPSURFACE_FOR_OPAQUE := true
"BOARD_USE_SCREENCAP := true

TARGET_HAVE_TSLIB := false

BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

TARGET_NO_BOOTLOADER := true
TARGET_NO_KERNEL := false
#if TARGET_GRALLOC_USES_ASHMEM is enabled, set debug.sf.hw=1 in system.prop
#TARGET_GRALLOC_USES_ASHMEM := true
TARGET_NO_RADIOIMAGE := true

TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_CPU_ABI  := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_BOARD_PLATFORM := qsd8k
TARGET_BOOTLOADER_BOARD_NAME := es209ra
QCOM_TARGET_PRODUCT := es209ra

# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER := AR6000
BOARD_WLAN_DEVICE           := wlan0
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/wifi.ko"
WIFI_DRIVER_MODULE_NAME     := "ar6000"


BOARD_KERNEL_CMDLINE := console=null
BOARD_KERNEL_BASE    := 0x20000000
#BOARD_NAND_PAGE_SIZE := 2048

#BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00500000
#BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00500000
#BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x05F00000
#BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x02000000
#BOARD_FLASH_BLOCK_SIZE := $(BOARD_NAND_PAGE_SIZE) * 64

# Use the non-open-source parts, if they're present
-include vendor/semc/es209ra/BoardConfigVendor.mk
