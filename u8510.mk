PRODUCT_AAPT_CONFIG := normal mdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi

$(call inherit-product, device/huawei/msm7x27-common/device.mk)
$(call inherit-product-if-exists, vendor/huawei/u8510/u8510-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/huawei/u8510/overlay

# FM
PRODUCT_PACKAGES += \
    FM

# Full-featured build of the Open-Source
$(call inherit-product, build/target/product/full.mk)

PRODUCT_NAME := huawei_u8510
PRODUCT_DEVICE := u8510
PRODUCT_MODEL := huawei_u8510
