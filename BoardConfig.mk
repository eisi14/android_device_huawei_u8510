-include vendor/huawei/u8510/BoardConfigVendor.mk
-include device/huawei/msm7x27-common/BoardConfigCommon.mk

# Kernel                                                                                                                                                                           
TARGET_KERNEL_CONFIG := u8510_defconfig                                                                                                                                            
#TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-4.4.3                                                                                                                                   
#FULL_KERNEL_BUILD := false                                                                                                                                                        
#TARGET_PREBUILT_KERNEL := device/huawei/u8650/prebuilt/kernel                                                                                                                     
BOARD_KERNEL_BASE := 0x10200000                                                                                                                                                    
BOARD_KERNEL_CMDLINE := console=ttyDCC0 androidboot.hardware=huawei                                                                                                                
BOARD_KERNEL_PAGESIZE := 2048  

# BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := FIXME

TARGET_BOOTLOADER_BOARD_NAME := u8510
TARGET_OTA_ASSERT_DEVICE := ideos_X3,u8510

USE_CAMERA_STUB := false

# COMMON_GLOBAL_CFLAGS += -DQCOM_FM_ENABLED
# BOARD_HAVE_QCOM_FM := true
