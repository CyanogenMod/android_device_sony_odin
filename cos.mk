$(call inherit-product, device/sony/yuga/full_yuga.mk)

# Inherit CM common COS stuff.
$(call inherit-product, vendor/cos/config/gsm.mk)

# Enhanced NFC
$(call inherit-product, vendor/cos/config/nfc_enhanced.mk)

# Inherit CM common Phone stuff.
$(call inherit-product, vendor/cos/config/common_full_phone.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=C6503_1271-0336 BUILD_FINGERPRINT=Sony/C6503_1271-0336/C6503:4.1.2/10.1.A.1.434/Tfp_rw:user/release-keys PRIVATE_BUILD_DESC="C6503-user 4.1.2 10.1.A.1.434 Tfp_rw test

PRODUCT_NAME := cos_odin
PRODUCT_DEVICE := odin
