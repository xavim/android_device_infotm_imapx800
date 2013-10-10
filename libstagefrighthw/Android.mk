ifeq ($(TARGET_BOARD_PLATFORM),imapx800)

LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	InfotmOMXPlugin.cpp

LOCAL_C_INCLUDES:= \
        $(TOP)/frameworks/native/include/media/openmax \
        $(TOP)/frameworks/native/include/media/hardware

LOCAL_SHARED_LIBRARIES :=       \
        libbinder               \
        libutils                \
        libcutils               \
        libui                   \
        libdl                   \
		libstagefright_foundation
LOCAL_MODULE := libstagefrighthw

include $(BUILD_SHARED_LIBRARY)

endif
