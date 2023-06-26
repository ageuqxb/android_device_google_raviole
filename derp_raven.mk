# Boot animation
TARGET_SCREEN_HEIGHT := 3120
TARGET_SCREEN_WIDTH := 1440
TARGET_BOOT_ANIMATION := 1440

# Inherit some common derp stuff.
$(call inherit-product, vendor/derp/config/common.mk)
$(call inherit-product, vendor/derp/config/gsm.mk)
$(call inherit-product, vendor/vendor/derp/config/common_ful_phonr.mk)

EXTRA_UDFPS_ANIMATIONS := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_USES_BLUR := true

# Inherit device configuration
$(call inherit-product, device/google/raviole/aosp_oriole.mk)

# Parts
$(call inherit-product-if-exists, vendor/google/pixelparts/pixelparts.mk)
$(call inherit-product-if-exists, vendor/google/pixelparts/powershare/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := derp_raven
PRODUCT_MODEL := Pixel 6 Pro
PRODUCT_BRAND := google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=oriole \
    PRIVATE_BUILD_DESC="oriole-user 13 TQ3A.230605.010 10121037 release-keys"

BUILD_FINGERPRINT := $(PRODUCT_OVERRIDE_FINGERPRINT)
