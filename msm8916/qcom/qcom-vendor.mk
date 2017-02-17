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
PROPRIETARY_PATH := vendor/qcom/binaries/msm8916/qcom/proprietary

PRODUCT_COPY_FILES += \
	$(PROPRIETARY_PATH)/bin/qcom-system-daemon:system/bin/qcom-system-daemon \
	$(PROPRIETARY_PATH)/bin/qseecomd:system/bin/qseecomd \
	$(PROPRIETARY_PATH)/vendor/lib/libQSEEComAPI.so:system/vendor/lib/libQSEEComAPI.so \
	$(PROPRIETARY_PATH)/vendor/lib/libssd.so:system/vendor/lib/libssd.so \
	$(PROPRIETARY_PATH)/vendor/lib/libperipheral_client.so:system/vendor/lib/libperipheral_client.so \
	$(PROPRIETARY_PATH)/vendor/lib/librpmb.so:system/vendor/lib/librpmb.so

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

PRODUCT_PACKAGES += libperipheral_client

endif
