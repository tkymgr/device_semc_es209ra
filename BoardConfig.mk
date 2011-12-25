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
ifeq ($(QC_PROP),true)
    
    BOARD_USES_QCOM_HARDWARE := true
    BOARD_USES_ADRENO_200 := true
    HAVE_ADRENO200_SOURCE := true
    HAVE_ADRENO200_SC_SOURCE := true
    HAVE_ADRENO200_FIRMWARE := true
    BOARD_USE_QCOM_TESTONLY := true

    ifneq ($(BUILD_TINY_ANDROID), true)
    BOARD_GPS_LIBRARIES := libloc
    BOARD_HAVE_BLUETOOTH := true
    BOARD_CAMERA_LIBRARIES := libcamera
    endif  # !BUILD_TINY_ANDROID

    BOARD_USES_QCOM_HARDWARE := true
    BOARD_USES_ADRENO_200 := true
    BOARD_USE_QCOM_TESTONLY := true

else
    BOARD_USES_GENERIC_AUDIO := true
    USE_CAMERA_STUB := true

endif # QC_PROP

TARGET_HAVE_TSLIB := true

TARGET_NO_BOOTLOADER := false
TARGET_NO_KERNEL := false
#if TARGET_GRALLOC_USES_ASHMEM is enabled, set debug.sf.hw=1 in system.prop
TARGET_GRALLOC_USES_ASHMEM := false
TARGET_NO_RADIOIMAGE := true

TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_CPU_ABI  := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_HARDWARE_3D := false
TARGET_BOARD_PLATFORM := qsd8k
TARGET_BOOTLOADER_BOARD_NAME := es209ra
QCOM_TARGET_PRODUCT := es209ra

BOARD_KERNEL_BASE    := 0x20000000
BOARD_NAND_PAGE_SIZE := 2048

BOARD_KERNEL_CMDLINE := console=null
BOARD_EGL_CFG := device/semc/$(TARGET_PRODUCT)/egl.cfg

BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00500000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00500000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x05F00000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x02000000
BOARD_FLASH_BLOCK_SIZE := $(BOARD_NAND_PAGE_SIZE) * 64
