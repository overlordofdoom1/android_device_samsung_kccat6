# Copyright (C) 2014 The CyanogenMod Project
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

# inherit from common trlte
-include device/samsung/kccat6-common/BoardConfigCommon.mk

TARGET_OTA_ASSERT_DEVICE := kccat6,kccat6xx

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 13631488
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 15728640
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2621440000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12669926400

# Kernel
TARGET_KERNEL_VARIANT_CONFIG := apq8084_sec_kccat6_eur_defconfig

# Camera
TARGET_FIXUP_PREVIEW := true

# Init
TARGET_INIT_VENDOR_LIB := libinit_msm
TARGET_LIBINIT_DEFINES_FILE := device/samsung/kccat6/init/init_kccat6.cpp
TARGET_UNIFIED_DEVICE := true

# inherit from the proprietary version
-include vendor/samsung/kccat6/BoardConfigVendor.mk

#TWRP -INCLUDE
DEVICE_RESOLUTION := 1080x1920
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_INCLUDE_INJECTTWRP := true
TARGET_USERIMAGES_USE_F2FS := true
