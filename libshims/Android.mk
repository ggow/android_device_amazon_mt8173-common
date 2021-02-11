LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := lab126.cpp
LOCAL_MODULE := libshim_lab126
LOCAL_SHARED_LIBRARIES := liblog
LOCAL_CFLAGS := -Wno-format-security -Wno-unused-parameter
LOCAL_MODULE_TAGS := optional
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := atomic.cpp
LOCAL_MODULE := libshim_atomic
LOCAL_SHARED_LIBRARIES := libutilscallstack
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := ui.cpp
LOCAL_MODULE := libshim_ui
LOCAL_SHARED_LIBRARIES := libui
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := gui.cpp
LOCAL_MODULE := libshim_gui
LOCAL_SHARED_LIBRARIES := libgui
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := crypto.cpp
LOCAL_MODULE := libshim_crypto
LOCAL_SHARED_LIBRARIES := libcrypto
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := binder.cpp
LOCAL_MODULE := libshim_binder
LOCAL_SHARED_LIBRARIES := libbinder
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := media.cpp
LOCAL_MODULE := libshim_media
LOCAL_SHARED_LIBRARIES := libmedia libutils
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := sensor.cpp
LOCAL_MODULE := libshim_sensor
LOCAL_SHARED_LIBRARIES := libsensor libutils
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_CFLAGS += $(LIBLOG_CFLAGS)
LOCAL_MODULE := libshim_xlog
LOCAL_SRC_FILES := xlog.c mtkaudio.cpp MediatekHacks.cpp
LOCAL_C_INCLUDES += frameworks/av/media/mtp/ system/core/include/ frameworks/rs/server/ frameworks/av/include/ hardware/libhardware/include/
LOCAL_SHARED_LIBRARIES := libcutils liblog libutils libbinder
include $(BUILD_SHARED_LIBRARY)