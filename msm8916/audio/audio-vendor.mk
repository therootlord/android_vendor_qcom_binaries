# Copyright (C) 2017 The LineageOS Project
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

ifeq ($(QCPATH),)
LOCAL_PATH := $(call my-dir)
PROPRIETARY_PATH := $(LOCAL_PATH)/proprietary

######################
### libqct_resampler wrapper
include $(CLEAR_VARS)
LOCAL_SRC_FILES := libqct_resampler/qct_resampler.cpp
LOCAL_MODULE := libqct_resampler
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR_SHARED_LIBRARIES)
LOCAL_CFLAGS := -Wall -ldl
include $(BUILD_SHARED_LIBRARY)
######################
### libqct_resampler.qcom
include $(CLEAR_VARS)
LOCAL_MODULE       := libqct_resampler.qcom
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR_SHARED_LIBRARIES)
LOCAL_SRC_FILES    := proprietary/vendor/lib/libqct_resampler.so
include $(BUILD_PREBUILT)
######################
### libperipheral_client
include $(CLEAR_VARS)
LOCAL_MODULE       := libperipheral_client
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_OWNER := qcom
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR_SHARED_LIBRARIES)
LOCAL_SRC_FILES    := proprietary/vendor/lib/$(LOCAL_MODULE).so
include $(BUILD_PREBUILT)
######################

PRODUCT_PACKAGES += \
	libqct_resampler \
	libqct_resampler.qcom \
	libperipheral_client

endif
