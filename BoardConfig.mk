#
# Copyright 2013 The Android Open-Source Project
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

# inherit from common mofd-common
-include device/asus/mofd-common/BoardConfigCommon.mk

TARGET_RELEASETOOLS_EXTENSIONS := device/asus/z008

# Graphics
COMMON_GLOBAL_CFLAGS += -DDEFAULT_DRM_FB_WIDTH=720  \
		        -DDEFAULT_DRM_FB_HEIGHT=1280

# Partitions
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12478019584

# Use the non-open-source parts, if they're present
-include vendor/asus/z008/BoardConfigVendor.mk
