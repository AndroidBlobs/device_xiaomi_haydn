# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from haydn device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := xiaomi
PRODUCT_DEVICE := haydn
PRODUCT_MANUFACTURER := xiaomi
PRODUCT_NAME := lineage_haydn
PRODUCT_MODEL := M2012K11C

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
TARGET_VENDOR := xiaomi
TARGET_VENDOR_PRODUCT_NAME := haydn
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="missi-user 12 SPB1.210331.013 eng.builde.20210514.183303 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Redmi/haydnpro/haydn:S/RKQ1.210209.002/builder05141855:user/release-keys
