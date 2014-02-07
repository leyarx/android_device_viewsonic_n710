# Inherit common language setup
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit vendor setup
$(call inherit-product-if-exists, vendor/viewsonic/n710/n710-vendor.mk)

# Path to overlay files
DEVICE_PACKAGE_OVERLAYS += device/viewsonic/n710/overlay

LOCAL_PATH := device/viewsonic/n710
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    device/viewsonic/n710/fstab.n710:root/fstab.n710 \
    device/viewsonic/n710/ueventd.n710.rc:root/ueventd.n710.rc \
    device/viewsonic/n710/init.n710.rc:root/init.n710.rc \
    device/viewsonic/n710/init.nv_dev_board.usb.rc:root/init.nv_dev_board.usb.rc

# Vold.fstab
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/prebuilt/etc/vold.fstab:system/etc/vold.fstab	
	
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/prebuilt/lib/modules/baseband_usb_chr.ko:/system/lib/modules/baseband_usb_chr.ko \
	$(LOCAL_PATH)/prebuilt/lib/modules/baseband-xmm-power2.ko:/system/lib/modules/baseband-xmm-power2.ko \
	$(LOCAL_PATH)/prebuilt/lib/modules/bcm4334.ko:/system/lib/modules/bcm4334.ko \
	$(LOCAL_PATH)/prebuilt/lib/modules/bcmdhd.ko:/system/lib/modules/bcmdhd.ko \
	$(LOCAL_PATH)/prebuilt/lib/modules/btwilink.ko:/system/lib/modules/btwilink.ko \
	$(LOCAL_PATH)/prebuilt/lib/modules/cfg80211.ko:/system/lib/modules/cfg80211.ko \
	$(LOCAL_PATH)/prebuilt/lib/modules/gps_drv.ko:/system/lib/modules/gps_drv.ko \
	$(LOCAL_PATH)/prebuilt/lib/modules/lib80211.ko:/system/lib/modules/lib80211.ko \
	$(LOCAL_PATH)/prebuilt/lib/modules/mac80211.ko:/system/lib/modules/mac80211.ko \
	$(LOCAL_PATH)/prebuilt/lib/modules/mlan.ko:/system/lib/modules/mlan.ko \
	$(LOCAL_PATH)/prebuilt/lib/modules/raw_ip_net.ko:/system/lib/modules/raw_ip_net.ko \
	$(LOCAL_PATH)/prebuilt/lib/modules/scsi_wait_scan.ko:/system/lib/modules/scsi_wait_scan.ko \
	$(LOCAL_PATH)/prebuilt/lib/modules/sd8xxx.ko:/system/lib/modules/sd8xxx.ko \
	$(LOCAL_PATH)/prebuilt/lib/modules/tcrypt.ko:/system/lib/modules/tcrypt.ko \
	$(LOCAL_PATH)/prebuilt/lib/modules/wl12xx.ko:/system/lib/modules/wl12xx.ko \
	$(LOCAL_PATH)/prebuilt/lib/modules/wl12xx_sdio.ko:/system/lib/modules/wl12xx_sdio.ko \
	$(LOCAL_PATH)/prebuilt/lib/modules/compat/cfg80211.ko:/system/lib/modules/compat/cfg80211.ko \
	$(LOCAL_PATH)/prebuilt/lib/modules/compat/compat.ko:/system/lib/modules/compat/compat.ko \
	$(LOCAL_PATH)/prebuilt/lib/modules/compat/mac80211.ko:/system/lib/modules/compat/mac80211.ko \
	$(LOCAL_PATH)/prebuilt/lib/modules/compat/wl12xx.ko:/system/lib/modules/compat/wl12xx.ko \
	$(LOCAL_PATH)/prebuilt/lib/modules/compat/wl12xx_sdio.ko:/system/lib/modules/compat/wl12xx_sdio.ko	
	
# Input device configuration files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/usr/idc/ft5x0x_ts.idc:system/usr/idc/ft5x0x_ts.idc \
    $(LOCAL_PATH)/prebuilt/usr/idc/nt1103-ts.idc:system/usr/idc/nt1103-ts.idc \
    $(LOCAL_PATH)/prebuilt/usr/idc/raydium_ts.idc:system/usr/idc/raydium_ts.idc \
    $(LOCAL_PATH)/prebuilt/usr/idc/sensor00fn11.idc:system/usr/idc/sensor00fn11.idc \
    $(LOCAL_PATH)/prebuilt/usr/idc/sis_touch.idc:system/usr/idc/sis_touch.idc \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/tegra-kbc.kl:system/usr/keylayout/tegra-kbc.kl
	
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml

# Build characteristics setting
PRODUCT_CHARACTERISTICS := tablet
PRODUCT_AAPT_CONFIG := normal large tvdpi hdpi
PRODUCT_AAPT_PREF_CONFIG := tvdpi

# This device has enough space for precise dalvik
PRODUCT_TAGS += dalvik.gc.type-precise	

# Extra packages to build for this device
PRODUCT_PACKAGES += \
    librs_jni \
    hciconfig \
    calibrator \
	iw \
    com.android.future.usb.accessory \
    make_ext4fs \
    setup_fs \
    audio.a2dp.default
	
# media config xml file
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml	

# media codec config xml file
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/etc/media_codecs.xml:system/etc/media_codecs.xml

# audio policy configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/etc/audio_policy.conf:system/etc/audio_policy.conf
	
PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# Inherit tablet dalvik settings
$(call inherit-product, frameworks/native/build/tablet-7in-hdpi-1024-dalvik-heap.mk)	
	
$(call inherit-product, build/target/product/full.mk)
