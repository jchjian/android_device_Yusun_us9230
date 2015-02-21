## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := us9230

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/Yusun/us9230/full_us9230.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := us9230
PRODUCT_NAME := cm_us9230
PRODUCT_BRAND := Yusun
PRODUCT_MODEL := LA-Q1
PRODUCT_MANUFACTURER := Yusun

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=us9230 BUILD_FINGERPRINT="Yusun/us9230/us9230:4.1.1/JRO03C/US9230-BW90810-0101-V0137:user/test-keys" PRIVATE_BUILD_DESC="us9230-user 4.1.1 JRO03C US9230-BW90810-0101-V0137 test-keys"
