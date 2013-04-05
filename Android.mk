ifeq ($(TARGET_BOOTLOADER_BOARD_NAME),u8510)
include $(call first-makefiles-under,$(call my-dir))
endif
