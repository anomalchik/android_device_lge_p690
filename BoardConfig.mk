-include vendor/lge/p690/BoardConfigVendor.mk
-include device/lge/msm7x27-common/BoardConfigCommon.mk

## BOARD
TARGET_NO_BOOTLOADER := true
BOARD_KERNEL_CMDLINE := mem=471M console=ttyMSM2,115200n8 androidboot.hardware=p690 no_console_suspend

TARGET_BOOTLOADER_BOARD_NAME := p690
TARGET_OTA_ASSERT_DEVICE := gelato,p690


SMALLER_FONT_FOOTPRINT := true

## Kernel 
TARGET_KERNEL_CONFIG := cyanogenmod_p690_defconfig
TARGET_KERNEL_SOURCE := kernel/lge/msm7x27
TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-4.4.3

## BT
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/lge/p690/bluetooth

## Audio
TARGET_PROVIDES_LIBAUDIO := true
BOARD_USES_AUDIO_LEGACY := false
P500_SPEAKER_IN_CALL_FIX := true

## WI-FI
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WLAN_DEVICE := bcm4330
BOARD_WEXT_NO_COMBO_SCAN := true
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_wext
WIFI_DRIVER_HAS_LGE_SOFTAP := true
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/wireless.ko"
WIFI_DRIVER_MODULE_ARG := "firmware_path=/etc/wl/rtecdc.bin nvram_path=/etc/wl/nvram.txt config_path=/data/misc/wifi/config"
WIFI_DRIVER_MODULE_NAME := "wireless"
WIFI_DRIVER_FW_PATH_STA := "/system/etc/wl/rtecdc.bin"
WIFI_DRIVER_FW_PATH_AP := "/system/etc/wl/rtecdc-apsta.bin"

## RIL
BOARD_RIL_CLASS := ../../../device/lge/p690/ril/

## FM
# BOARD_HAVE_QCOM_FM := true
# BOARD_HAVE_FM_RADIO := true
# BOARD_FM_DEVICE := bcm4330
# COMMON_GLOBAL_CFLAGS += -DHAVE_FM_RADIO -DQCOM_FM_ENABLED

## Camera CAF fix params
BOARD_USES_QCOM_LEGACY_CAM_PARAMS := true
