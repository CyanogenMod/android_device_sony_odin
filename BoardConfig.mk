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

# inherit from the common fusion3 definitions
include device/sony/fusion3-common/BoardConfigCommon.mk

# inherit from the proprietary version
-include vendor/sony/odin/BoardConfigVendor.mk

# Assert
TARGET_OTA_ASSERT_DEVICE := C6502,C6503,C6506,odin

TARGET_SPECIFIC_HEADER_PATH += device/sony/odin/include

BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/sony/odin/bluetooth

TARGET_KERNEL_CONFIG := cm_fusion3_odin_defconfig

# Healthd
BACKLIGHT_PATH := /sys/class/leds/lm3533-lcd-bl-1/brightness
SECONDARY_BACKLIGHT_PATH := /sys/class/leds/lm3533-lcd-bl-2/brightness

# Partition sizes
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12595400704

BOARD_HARDWARE_CLASS += device/sony/odin/cmhw

TARGET_DISPLAY_GAMMA_DISABLED := true
