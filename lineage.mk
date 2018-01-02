# Lineage-15.0
# 20180102 - Migrate to Lineage-15.0
#	- sixito007 (sixcompswk@gmail.com)
# Release name
PRODUCT_RELEASE_NAME := A7000

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Inherit from AOSP 64-bit support
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from AOSP product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony.mk)

# Inherit Lineage's custom product configuration
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Call device specific makefile
$(call inherit-product, device/lenovo/aio_row/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_aio_row
PRODUCT_DEVICE := aio_row
PRODUCT_BRAND := A7000-a
PRODUCT_MODEL := A7000
PRODUCT_MANUFACTURER := Lenovo
PRODUCT_RESTRICT_VENDOR_FILES := false
