# Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# p690 configs
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/gelato_keypad.kl:system/usr/keylayout/gelato_keypad.kl \
	$(LOCAL_PATH)/configs/gelato_keypad.kcm.bin:system/usr/keychars/gelato_keypad.kcm.bin \
	$(LOCAL_PATH)/configs/synaptics-rmi-ts.idc:system/usr/idc/synaptics-rmi-ts.idc \
	$(LOCAL_PATH)/configs/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

# p690 init
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/init.p690.rc:root/init.p690.rc \
	$(LOCAL_PATH)/ueventd.p690.rc:root/ueventd.p690.rc

# fm radio
# PRODUCT_PACKAGES += \
#    Effem \
#    libfmradio.bcm4330
	
# PRODUCT_COPY_FILES += \
#    frameworks/base/data/etc/com.stericsson.hardware.fm.receiver.xml:system/etc/permissions/com.stericsson.hardware.fm.receiver.xml
	
# P690 bluetooth vendor configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/bluetooth/bt_vendor.conf:system/etc/bluetooth/bt_vendor.conf

# P690 Audio
PRODUCT_PACKAGES += \
    audio_policy.p690 \
    audio.primary.p690
	
# SPEAKER_IN_CALL_FIX
# PRODUCT_COPY_FILES += $(LOCAL_PATH)/configs/audio_policy.conf:system/etc/audio_policy.conf

# Live wallpapers
PRODUCT_COPY_FILES += packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    librs_jni

# Inherit products (Most specific first)
$(call inherit-product, vendor/lge/p690/p690-vendor.mk)
$(call inherit-product, device/lge/msm7x27-common/device.mk)
$(call inherit-product, vendor/lge/msm7x27-common/msm7x27-common-vendor-blobs.mk)

# Overrides
PRODUCT_NAME := p690
PRODUCT_DEVICE := p690
PRODUCT_MODEL := LG-P690
PRODUCT_MANUFACTURER := LGE

PRODUCT_AAPT_PREF_CONFIG := mdpi
$(call inherit-product, device/mdpi-common/mdpi.mk)

# P690 overlays (Most specific last)
DEVICE_PACKAGE_OVERLAYS += device/lge/p690/overlay
