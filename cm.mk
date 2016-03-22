# Boot animation
TARGET_SCREEN_HEIGHT := 720
TARGET_SCREEN_WIDTH := 1280

# Inherit some common CM stuff.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/asus/Z00D/device.mk)

DEVICE_PACKAGE_OVERLAYS += device/asus/Z00D/overlay

PRODUCT_RUNTIMES := runtime_libart_default

## Device identifier. This must come after all inclusions
PRODUCT_NAME := cm_Z00D
PRODUCT_BRAND := asus
PRODUCT_MODEL := ASUS_Z00D
PRODUCT_MANUFACTURER := asus
PRODUCT_DEVICE := Z00D
