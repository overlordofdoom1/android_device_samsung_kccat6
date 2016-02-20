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
BOARD_FLASH_BLOCK_SIZE := 262144
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 17825792 
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 19922944 
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3774873600 #910T uses: 3984588800
BOARD_USERDATAIMAGE_PARTITION_SIZE := 27019685888 #910T uses: 26558312448

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
TARGET_PREBUILT_KERNEL := device/samsung/kccat6/prebuilt/kernel
