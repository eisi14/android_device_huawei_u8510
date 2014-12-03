-include vendor/lge/p500/BoardConfigVendor.mk
-include device/huawei/msm7x27-common/BoardConfigCommon.mk

TARGET_KERNEL_CONFIG                := u8510_defconfig
BOARD_KERNEL_BASE := 0x10200000
BOARD_KERNEL_CMDLINE := console=ttyDCC0 androidboot.hardware=huawei
BOARD_KERNEL_PAGESIZE := 2048

TARGET_BOOTLOADER_BOARD_NAME    := u8510
TARGET_OTA_ASSERT_DEVICE := ideos_X3,u8510

MINIGZIP                            := $(shell which lzma)

BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/huawei/u8510/bluetooth

