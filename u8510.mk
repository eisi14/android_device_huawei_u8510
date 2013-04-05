PRODUCT_AAPT_CONFIG := normal mdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi

$(call inherit-product, device/huawei/msm7x27-common/device.mk)
$(call inherit-product-if-exists, vendor/huawei/u8510/u8510-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/huawei/u8510/overlay

# configs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/etc/init.d/01compcache:system/etc/inid.d/01compcache

# Touchscreen
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/usr/idc/synaptics.idc:system/usr/idc/synaptics.idc \
    $(LOCAL_PATH)/prebuilt/usr/idc/7k_handset.idc:system/usr/idc/7k_handset.idc \
    $(LOCAL_PATH)/prebuilt/usr/idc/kp_test_input.idc:system/usr/idc/kp_test_input.idc \
    $(LOCAL_PATH)/prebuilt/usr/idc/sensors.idc:system/usr/idc/sensors.idc \
    $(LOCAL_PATH)/prebuilt/usr/idc/surf_keypad.idc:system/usr/idc/surf_keypad.idc \
    $(LOCAL_PATH)/prebuilt/usr/idc/ts_test_input.idc:system/usr/idc/ts_test_input.idc

# init
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init.huawei.rc:root/init.huawei.rc \
    $(LOCAL_PATH)/ueventd.huawei.rc:root/ueventd.huawei.rc

# Audio
PRODUCT_PACKAGES += \
    audio_policy.u8510 \
    audio.primary.u8510

# FM
PRODUCT_PACKAGES += \
    FM

# Live wallpapers
PRODUCT_COPY_FILES += packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    librs_jni

# Full-featured build of the Open-Source
$(call inherit-product, build/target/product/full.mk)

PRODUCT_NAME := huawei_u8510
PRODUCT_DEVICE := u8510
PRODUCT_MODEL := huawei_u8510
