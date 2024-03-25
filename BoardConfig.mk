#
# Copyright (C) 2021 Android Open Source Project
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

DEVICE_PATH := device/oplus/denniz

# Inherit from oplus mt6893-common
include device/oplus/mt6893-common/BoardConfigCommon.mk

# Assertation
TARGET_OTA_ASSERT_DEVICE := denniz,OP515BL1

# Kernel
TARGET_KERNEL_CONFIG := denniz_defconfig
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/dtbo.img

# DTB
BOARD_PREBUILT_DTBIMAGE_DIR := $(DEVICE_PATH)/prebuilt
TARGET_PREBUILT_DTB := $(BOARD_PREBUILT_DTBIMAGE_DIR)/denniz.dtb
BOARD_MKBOOTIMG_ARGS += --dtb $(TARGET_PREBUILT_DTB)

# Init
TARGET_INIT_VENDOR_LIB ?= //$(DEVICE_PATH):init_denniz
TARGET_RECOVERY_DEVICE_MODULES ?= init_denniz

# Call proprietary blob setup
include vendor/oplus/denniz/BoardConfigVendor.mk
