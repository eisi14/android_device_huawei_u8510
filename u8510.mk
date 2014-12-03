# u8510 init
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init.huawei.rc:root/init.huawei.rc \
    $(LOCAL_PATH)/ueventd.huawei.rc:root/ueventd.huawei.rc \
    $(LOCAL_PATH)/fstab.huawei:root/fstab.huawei

# fm radio
#PRODUCT_PACKAGES += \
#    Effem \
#    libfmradio.bcm4325
#
#PRODUCT_COPY_FILES += \
#    frameworks/base/data/etc/com.stericsson.hardware.fm.receiver.xml:system/etc/permissions/com.stericsson.hardware.fm.receiver.xml

# Bluetooth configuration files
PRODUCT_COPY_FILES += \

# u8510 bluetooth vendor configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/bluetooth/bt_vendor.conf:system/etc/bluetooth/bt_vendor.conf

# Live wallpapers
PRODUCT_COPY_FILES += packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    librs_jni

# Inherit products (Most specific first)
$(call inherit-product, vendor/huawei/u8510/u8510-vendor.mk)
$(call inherit-product, device/huawei/msm7x27-common/device.mk)
$(call inherit-product, vendor/huawei/msm7x27-common/msm7x27-common-vendor-blobs.mk)

# Overrides
PRODUCT_NAME := huawei_u8510
PRODUCT_DEVICE := u8510
PRODUCT_MODEL := huawei_u8510
PRODUCT_MANUFACTURER := HUAWEI

PRODUCT_AAPT_PREF_CONFIG := mdpi
$(call inherit-product, device/mdpi-common/mdpi.mk)

# u8510 overlays (Most specific last)
DEVICE_PACKAGE_OVERLAYS += device/huawei/u8510/overlay
