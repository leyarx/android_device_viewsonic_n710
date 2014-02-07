# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 800

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

# Inherit device configuration
$(call inherit-product, device/viewsonic/n710/device_n710.mk)

#$(call inherit-product, device/viewsonic/n710/bluetooth/ti-wpan-products.mk)

## Device identifier. This must come after all inclusions
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_DEVICE := n710
PRODUCT_NAME := cm_n710
PRODUCT_BRAND := ViewSonic
PRODUCT_MODEL := N710
PRODUCT_MANUFACTURER := Keenhi

# Release name
PRODUCT_RELEASE_NAME := ViewPad N710
