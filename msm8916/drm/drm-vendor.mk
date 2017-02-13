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
PROPRIETARY_PATH := vendor/qcom/binaries/msm8916/drm/proprietary

PRODUCT_COPY_FILES += \
	$(PROPRIETARY_PATH)/lib/liboemcrypto.so:system/lib/liboemcrypto.so \
	$(PROPRIETARY_PATH)/vendor/lib/libdrmdecrypt.so:system/vendor/lib/libdrmdecrypt.so \
	$(PROPRIETARY_PATH)/vendor/lib/libwvm.so:system/vendor/lib/libwvm.so \
	$(PROPRIETARY_PATH)/vendor/lib/libWVStreamControlAPI_L1.so:system/vendor/lib/libWVStreamControlAPI_L1.so \
	$(PROPRIETARY_PATH)/vendor/lib/libwvdrm_L1.so:system/vendor/lib/libwvdrm_L1.so \
	$(PROPRIETARY_PATH)/vendor/lib/drm/libdrmwvmplugin.so:system/vendor/lib/drm/libdrmwvmplugin.so \
	$(PROPRIETARY_PATH)/vendor/lib/drm/libdrmprplugin.so:system/vendor/lib/drm/libdrmprplugin.so \
	$(PROPRIETARY_PATH)/vendor/lib/libdrmfs.so:system/vendor/lib/libdrmfs.so \
	$(PROPRIETARY_PATH)/vendor/lib/libdrmtime.so:system/vendor/lib/libdrmtime.so \
	$(PROPRIETARY_PATH)/vendor/lib/libdrmfs.so:system/vendor/lib/libdrmfs.so \
	$(PROPRIETARY_PATH)/vendor/lib/libdrmtime.so:system/vendor/lib/libdrmtime.so \
	$(PROPRIETARY_PATH)/vendor/lib/libprdrmdecrypt.so:system/vendor/lib/libprdrmdecrypt.so \
	$(PROPRIETARY_PATH)/vendor/lib/libtzdrmgenprov.so:system/vendor/lib/libtzdrmgenprov.so \
	$(PROPRIETARY_PATH)/vendor/lib/libwvdrm_L1.so:system/vendor/lib/libwvdrm_L1.so \
	$(PROPRIETARY_PATH)/vendor/lib/mediadrm/libdrmclearkeyplugin.so:system/vendor/lib/mediadrm/libdrmclearkeyplugin.so \
	$(PROPRIETARY_PATH)/vendor/lib/mediadrm/libprmediadrmdecrypt.so:system/vendor/lib/mediadrm/libprmediadrmdecrypt.so \
	$(PROPRIETARY_PATH)/vendor/lib/mediadrm/libprmediadrmplugin.so:system/vendor/lib/mediadrm/libprmediadrmplugin.so \
	$(PROPRIETARY_PATH)/vendor/lib/mediadrm/libwvdrmengine.so:system/vendor/lib/mediadrm/libwvdrmengine.so
endif
