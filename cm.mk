# Boot Animation
TARGET_SCREEN_HEIGHT := 480
TARGET_SCREEN_WIDTH := 320

# Include GSM stuff
$(call inherit-product, vendor/cm/config/gsm.mk)

# Inherit device configuration for u8510.
$(call inherit-product, device/huawei/u8510/u8510.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cm/config/common_mini_phone.mk)

PRODUCT_NAME := cm_u8510
PRODUCT_BRAND := Huawei
PRODUCT_DEVICE := u8510
PRODUCT_MODEL := U8510
PRODUCT_MANUFACTURER := HUAWEI

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=huawei_u8510 \
    BUILD_FINGERPRINT="Huawei/U8510/u8510:4.1.2/HuaweiU8510/C169B831:user/ota-rel-keys,release-keys" \
    PRIVATE_BUILD_DESC="IdeosX3-user 4.1.2 release-keys"

# Release name and versioning
PRODUCT_RELEASE_NAME := U8510
PRODUCT_VERSION_DEVICE_SPECIFIC :=
-include vendor/cyanogen/products/common_versions.mk
