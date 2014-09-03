# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Specify phone tech before including full_phone
$(call inherit-product, vendor/mk/config/gsm.mk)

# Inherit some common MK stuff.
$(call inherit-product, vendor/mk/config/common_full_phone.mk)
$(call inherit-product, vendor/mk/config/common.mk)

# Enhanced NFC
$(call inherit-product, vendor/mk/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/lge/geehrc/mk_geehrc.mk)

# Release name
PRODUCT_RELEASE_NAME := geehrc

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := geehrc
PRODUCT_NAME := mk_geehrc
PRODUCT_BRAND := LGE
PRODUCT_MODEL := LG Optimus G
PRODUCT_MANUFACTURER := LGE
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=occam BUILD_FINGERPRINT="google/occam/geehrc:4.4.2/KOT49H/937116:user/release-keys" PRIVATE_BUILD_DESC="occam-user 4.4.2 KVT49L 937116 release-keys"

PRODUCT_PACKAGES += \
        Torch
