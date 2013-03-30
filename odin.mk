# Copyright (C) 2013 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Inherit the fusion-common definitions
$(call inherit-product, device/sony/fusion3-common/fusion3.mk)

DEVICE_PACKAGE_OVERLAYS += device/sony/odin/overlay

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml

# This device is xhdpi.  However the platform doesn't
# currently contain all of the bitmaps at xhdpi density so
# we do this little trick to fall back to the hdpi version
# if the xhdpi doesn't exist.
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Configuration scripts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/flashled_calc_parameters.cfg:system/etc/flashled_calc_parameters.cfg \
    $(LOCAL_PATH)/config/sensors.conf:system/etc/sensors.conf \
    $(LOCAL_PATH)/prebuilt/hw_config.sh:system/etc/hw_config.sh \
    $(LOCAL_PATH)/prebuilt/pre_hw_config.sh:system/etc/pre_hw_config.sh

# Device specific init
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/init.device.rc:root/init.device.rc

# USB function switching
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/init.sony.usb.rc:root/init.sony.usb.rc

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/vold.fstab:system/etc/vold.fstab \
    $(LOCAL_PATH)/config/media_profiles.xml:system/etc/media_profiles.xml

# Device specific part for two-stage boot
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/bootrec-device:recovery/bootrec-device

# Key layouts and touchscreen
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/clearpad.idc:system/usr/idc/clearpad.idc \
    $(LOCAL_PATH)/config/Button_Jack.kl:system/usr/keylayout/Button_Jack.kl \
    $(LOCAL_PATH)/config/atmel_mxt_ts.kl:system/usr/keylayout/atmel_mxt_ts.kl \
    $(LOCAL_PATH)/config/clearpad.kl:system/usr/keylayout/clearpad.kl \
    $(LOCAL_PATH)/config/cyttsp-i2c.kl:system/usr/keylayout/cyttsp-i2c.kl \
    $(LOCAL_PATH)/config/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    $(LOCAL_PATH)/config/keypad_8960.kl:system/usr/keylayout/keypad_8960.kl \
    $(LOCAL_PATH)/config/keypad_8960_liquid.kl:system/usr/keylayout/keypad_8960_liquid.kl

# Infrared prebuilt Stuff
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/com.sony.device.jar:system/framework/com.sony.device.jar \
    $(LOCAL_PATH)/prebuilt/com.sony.remotecontrol.ir.v1.jar:system/framework/com.sony.remotecontrol.ir.v1.jar \
    $(LOCAL_PATH)/prebuilt/com.sony.smallapp.jar:system/framework/com.sony.smallapp.jar \
    $(LOCAL_PATH)/prebuilt/com.sony.snei.amsharedlib.jar:system/framework/com.sony.snei.amsharedlib.jar \
    $(LOCAL_PATH)/prebuilt/IrRemote.apk:system/app/IrRemote.apk \
    $(LOCAL_PATH)/prebuilt/IrRemoteApiService.apk:system/app/IrRemoteApiService.apk \
    $(LOCAL_PATH)/prebuilt/IrRemoteService.apk:system/app/IrRemoteService.apk \
    $(LOCAL_PATH)/prebuilt/SmallAppManagerService.apk:system/app/SmallAppManagerService.apk \
    $(LOCAL_PATH)/prebuilt/com.sony.device.xml:system/etc/permission/com.sony.device.xml \
    $(LOCAL_PATH)/prebuilt/com.sony.remotecontrol.ir.v1.xml:system/etc/permission/com.sony.remotecontrol.ir.v1.xml \
    $(LOCAL_PATH)/prebuilt/com.sony.smallapp.framework.xml:system/etc/permission/com.sony.smallapp.framework.xml \
    $(LOCAL_PATH)/prebuilt/com.sony.snei.amsharedlib.xml:system/etc/permission/com.sony.snei.amsharedlib.xml \
    $(LOCAL_PATH)/prebuilt/com.sony.snei.vu.api.install.xml:system/etc/permission/com.sony.snei.vu.api.install.xml

$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)

$(call inherit-product-if-exists, vendor/sony/odin/odin-vendor.mk)
