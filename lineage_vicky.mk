# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from dubai device
$(call inherit-product, device/motorola/vicky/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_vicky
PRODUCT_DEVICE := vicky
PRODUCT_MANUFACTURER := motorola
PRODUCT_BRAND := motorola
PRODUCT_MODEL := motorola g72

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=vicky_g_vext \
    PRIVATE_BUILD_DESC="vicky_g_vext-user 12 S1RD32.55-106 0cdff5-e7305 release-keys"

BUILD_FINGERPRINT := motorola/vicky_g_vext/vicky:12/S3SVS32.45-28-1-2/7ab7f9:user/release-keys
