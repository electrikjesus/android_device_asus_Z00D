#
# Copyright 2014 The Android Open Source Project
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

# inherit from common cvtlp-common
-include device/asus/cvtlp-common/BoardConfigCommon.mk

# Partitions
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5129031680 ##5129048064 - 16384
BOARD_CACHEIMAGE_PARTITION_SIZE := 536870912 # 536870912
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1363148800
BOARD_FLASH_BLOCK_SIZE := 131072

# Inline kernel building
TARGET_KERNEL_SOURCE := kernel/asus/Z00D
TARGET_KERNEL_ARCH := x86
BOARD_KERNEL_IMAGE_NAME := bzImage
TARGET_KERNEL_CONFIG := cyanogenmod_Z00D_defconfig

# Use the non-open-source parts, if they're present
-include vendor/asus/Z00D/BoardConfigVendor.mk

# Blissful Building Options
#BLISS_BUILD_BLOCK := 1
BLISSIFY := true
BLISS_O3 := true
BLISS_GRAPHITE := true
BLISS_STRICT := false
#BLISS_KRAIT := true
#FLOOP_NEST_OPTIMIZE := true
#ENABLE_GCCONLY := true
#BLISS_PIPE := true
#TARGET_ENABLE_UKM := true
#BLISS_PTHREAD := true
#BLISS_GOMP := true
#BLISS_EXTRAGCC := true
#BLISS_SANITIZE := true
#TARGET_USE_QCOM_BIONIC_OPTIMIZATION := true
#FAST_MATH := true
#ENABLE_MODULAR_O3 := true
#ENABLE_LTO := true
#LINK_TIME_OPTIMIZATIONS := true
#TARGET_USE_ION_COMPAT := true
#TARGET_USE_KRAIT_PLD_SET := true
#WITH_LZMA_OTA := true
#TARGET_TC_ROM := 6.1-linaro
#TARGET_TC_KERNEL := 6.1-linaro
TARGET_GCC_VERSION_EXP := $(TARGET_TC_ROM)
TARGET_KERNEL_CUSTOM_TOOLCHAIN := $(TARGET_TC_KERNEL)

#SaberMod
#-include vendor/bliss/config/sm.mk
