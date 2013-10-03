# Copyright (C) 2013 The Android Open Source Project
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

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
common_src_path := ..
common_src_files := $(common_src_path)/InputDevicePowerMonitor.cpp \
		    $(common_src_path)/power.cpp \

include external/stlport/libstlport.mk
LOCAL_C_INCLUDES += $(LOCAL_PATH) ..

LOCAL_MODULE := power.haswell
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/hw
LOCAL_SRC_FILES := $(common_src_files) \
                   InputDevicePowerMonitorInfo.cpp \

LOCAL_SHARED_LIBRARIES := liblog libcutils libstlport
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)
