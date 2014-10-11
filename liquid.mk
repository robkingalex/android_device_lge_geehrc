# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Inherit some common Liquid stuff.
$(call inherit-product, vendor/liquid/config/common_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/liquid/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/lge/geehrc/full_geehrc.mk)

# Release name
PRODUCT_RELEASE_NAME := geehrc

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := geehrc
PRODUCT_NAME := liquid_geehrc
PRODUCT_BRAND := LGE
PRODUCT_MODEL := LG Optimus G
PRODUCT_MANUFACTURER := LGE
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_PROPERTY_OVERRIDES += ro.buildzipid=liquid.geehrc.$(shell date +%m%d%y).$(shell date +%H%M%S)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/lge/geehrc/device.mk)
$(call inherit-product-if-exists, vendor/lge/gee/gee-vendor.mk)

# override
PRODUCT_BUILD_PROP_OVERRIDES += \
	BUILD_NUMBER=937116 \
	PRODUCT_NAME=occam \
	TARGET_BUILD_TYPE=user \
	BUILD_VERSION_TAGS=release-keys \
	PRIVATE_BUILD_DESC="occam-user 4.4.2 KVT49L 937116 release-keys" \
	BUILD_FINGERPRINT="google/occam/geehrc:4.4.2/KOT49H/937116:user/release-keys"

PRODUCT_PACKAGES += \
        Torch
