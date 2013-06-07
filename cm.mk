$(call inherit-product, device/sony/odin/full_odin.mk)

# Inherit CM common GSM stuff.
$(call inherit-product, vendor/cm/config/gsm.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Inherit CM common Phone stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=C6503 BUILD_FINGERPRINT=Sony/C6503_1272-3738/C6503:4.1.2/10.1.1.A.1.253/Avt3rw:user/release-keys PRIVATE_BUILD_DESC="C6503-user 4.1.2 10.1.1.A.1.253 Avt3rw test-keys"

PRODUCT_NAME := cm_odin
PRODUCT_DEVICE := odin
