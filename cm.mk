## Specify phone tech before including full_phone

# Release name
PRODUCT_RELEASE_NAME := j3110

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/j3110/device_j3110.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := j3110
PRODUCT_NAME := cm_j3110
PRODUCT_BRAND := samsung
PRODUCT_MODEL := j3110
PRODUCT_MANUFACTURER := samsung
