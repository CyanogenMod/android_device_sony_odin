$(call inherit-product, device/sony/odin/full_odin.mk)

# Inherit CM common GSM stuff.
$(call inherit-product, vendor/cm/config/gsm.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Boot Animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Inherit CM common Phone stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=C6503_1271-0336 BUILD_FINGERPRINT=Sony/C6503_1271-0336/C6503:4.1.2/10.1.A.1.434/Tfp_rw:user/release-keys PRIVATE_BUILD_DESC="C6503-user 4.1.2 10.1.A.1.434 Tfp_rw test-keys"

PRODUCT_NAME := cm_odin
PRODUCT_DEVICE := odin
