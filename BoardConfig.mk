# Copyright (C) 2010 The Android Open Source Project
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

#
# This file is the build configuration for a full Android
# build for grouper hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps).
#
-include vendor/leeco/zl1/BoardConfigVendor.mk

BOARD_PATH := device/leeco/zl1
BOARD_VENDOR := leeco

TARGET_NO_BOOTLOADER := true
TARGET_OTA_ASSERT_DEVICE := zl1,le_zl1,LEX727,LEX720,le_LEX720
TARGET_BOOTLOADER_BOARD_NAME := msm8996

# Platform
TARGET_BOARD_PLATFORM := msm8996
TARGET_BOARD_PLATFORM_GPU := qcom-adreno530

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := kryo

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := kryo

TARGET_USE_QCOM_BIONIC_OPTIMIZATION := true
TARGET_USES_64_BIT_BINDER := true

ENABLE_CPUSETS := true
#ENABLE_SCHEDBOOST := true
TARGET_USES_INTERACTION_BOOST := true

BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x237 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 cma=32M@0-0xffffffff
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_RAMDISK_OFFSET     := 0x01000000
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 4096
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
TARGET_KERNEL_SOURCE := kernel/leeco/zl1
TARGET_KERNEL_CONFIG := zl1_defconfig
TARGET_KERNEL_APPEND_DTB := true

BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 4294967296
BOARD_USERDATAIMAGE_PARTITION_SIZE := 57436708864
BOARD_FLASH_BLOCK_SIZE := 262144

# global
TARGET_SPECIFIC_HEADER_PATH := $(BOARD_PATH)/include
BOARD_USES_QCOM_HARDWARE := true
TARGET_USES_QCOM_BSP := true
TARGET_USERIMAGES_USE_EXT4 := true

# Display
BOARD_USES_ADRENO := true
TARGET_QCOM_DISPLAY_VARIANT := caf-msm8996
USE_OPENGL_RENDERER := true
TARGET_USES_ION := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_OVERLAY := true
OVERRIDE_RS_DRIVER := libRSDriver_adreno.so
MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 2048*1024
TARGET_CONTINUOUS_SPLASH_ENABLED := true
MAX_VIRTUAL_DISPLAY_DIMENSION := 4096
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
HAVE_ADRENO_SOURCE := false
VSYNC_EVENT_PHASE_OFFSET_NS := 2000000
SF_VSYNC_EVENT_PHASE_OFFSET_NS := 6000000

# Audio/media
TARGET_QCOM_AUDIO_VARIANT := caf-msm8996
TARGET_QCOM_MEDIA_VARIANT := caf-msm8996

BOARD_USES_QC_TIME_SERVICES := true

# audio
AUDIO_FEATURE_ENABLED_ACDB_RELOAD := true
BOARD_USES_ALSA_AUDIO := true
USE_CUSTOM_AUDIO_POLICY := 1
BOARD_SUPPORTS_SOUND_TRIGGER := true
AUDIO_USE_LL_AS_PRIMARY_OUTPUT := true

AUDIO_FEATURE_ENABLED_VBAT_MONITOR := true
AUDIO_FEATURE_ENABLED_ANC_HEADSET := true
AUDIO_FEATURE_ENABLED_COMPRESS_CAPTURE := false
AUDIO_FEATURE_ENABLED_COMPRESS_VOIP := true
AUDIO_FEATURE_ENABLED_CUSTOMSTEREO := true
AUDIO_FEATURE_ENABLED_EXTN_FORMATS := true
AUDIO_FEATURE_ENABLED_EXTN_FLAC_DECODER := true
AUDIO_FEATURE_ENABLED_EXTN_RESAMPLER := false
AUDIO_FEATURE_ENABLED_FM_POWER_OPT := true
AUDIO_FEATURE_ENABLED_FLUENCE := true
AUDIO_FEATURE_ENABLED_HDMI_SPK := true
AUDIO_FEATURE_ENABLED_HDMI_EDID := true
#AUDIO_FEATURE_ENABLED_HDMI_PASSTHROUGH := true
#AUDIO_FEATURE_ENABLED_KEEP_ALIVE := true
AUDIO_FEATURE_ENABLED_HFP := true
AUDIO_FEATURE_ENABLED_INCALL_MUSIC := false
AUDIO_FEATURE_ENABLED_MULTI_VOICE_SESSIONS := true
AUDIO_FEATURE_ENABLED_PCM_OFFLOAD := true
AUDIO_FEATURE_ENABLED_PCM_OFFLOAD_24 := true
AUDIO_FEATURE_ENABLED_FLAC_OFFLOAD := true
AUDIO_FEATURE_ENABLED_VORBIS_OFFLOAD := false
AUDIO_FEATURE_ENABLED_WMA_OFFLOAD := false
AUDIO_FEATURE_ENABLED_ALAC_OFFLOAD := false
AUDIO_FEATURE_ENABLED_APE_OFFLOAD := true
AUDIO_FEATURE_ENABLED_AAC_ADTS_OFFLOAD := true
AUDIO_FEATURE_ENABLED_PROXY_DEVICE := true
AUDIO_FEATURE_ENABLED_KPI_OPTIMIZE := true
AUDIO_FEATURE_ENABLED_SPKR_PROTECTION := false
AUDIO_FEATURE_ENABLED_SSR := false
AUDIO_FEATURE_ENABLED_ACDB_LICENSE := true
SNDRV_COMPRESS_SET_NEXT_TRACK_PARAM := true
AUDIO_FEATURE_ENABLED_PLAYBACK_ULL := false

AUDIO_FEATURE_ENABLED_DTS_EAGLE := false
BOARD_USES_SRS_TRUEMEDIA := false
DTS_CODEC_M_ := true
AUDIO_FEATURE_ENABLED_DEV_ARBI := true
MM_AUDIO_ENABLED_FTM := true
MM_AUDIO_ENABLED_SAFX := true
TARGET_USES_QCOM_MM_AUDIO := true
AUDIO_FEATURE_ENABLED_HW_ACCELERATED_EFFECTS := false
AUDIO_FEATURE_ENABLED_DS2_DOLBY_DAP := true

AUDIO_FEATURE_ENABLED_SOURCE_TRACKING := true
AUDIO_FEATURE_ENABLED_AUDIOSPHERE := true
#USE_XML_AUDIO_POLICY_CONF := 1

#BOARD_HAVE_QCOM_FM := true
#TARGET_QCOM_NO_FM_FIRMWARE := true
#BOARD_DISABLE_FMRADIO_LIBJNI = true

# Camera
BOARD_QTI_CAMERA_32BIT_ONLY := true
#TARGET_USES_MEDIA_EXTENSIONS := true
USE_DEVICE_SPECIFIC_CAMERA := true
#TARGET_HAS_LEGACY_CAMERA_HAL1 := true

#Media
TARGET_ENABLE_QC_AV_ENHANCEMENTS := true

#General
TARGET_COMPILE_WITH_MSM_KERNEL := true

# Disable secure discard because it's SLOW
BOARD_SUPPRESS_SECURE_ERASE := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(BOARD_PATH)/bluetooth
BOARD_HAS_QCA_BT_ROME := true
QCOM_BT_USE_BTNV := true
QCOM_BT_USE_SMD_TTY := true
TARGET_QCOM_BLUETOOTH_VARIANT := caf-msm8996

# Wifi
BOARD_HAS_QCOM_WLAN              := true
BOARD_WLAN_DEVICE                := qcwcn
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
WIFI_DRIVER_FW_PATH_STA          := "sta"
WIFI_DRIVER_FW_PATH_AP           := "ap"
WIFI_DRIVER_FW_PATH_P2P          := "p2p"
#WIFI_DRIVER_MODULE_NAME := "wlan"
#WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/wlan.ko"

# charger
BOARD_HAL_STATIC_LIBRARIES := libhealthd.msm8996
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGER_DISABLE_INIT_BLANK := true
# not really for recovery anymor... but healthd still uses it
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"

# power hal
TARGET_PROVIDES_POWERHAL := true
BOARD_HAL_STATIC_LIBRARIES := libdumpstate.msm8996

# libinit
TARGET_UNIFIED_DEVICE := true
TARGET_INIT_VENDOR_LIB := libinit_zl1
TARGET_RECOVERY_DEVICE_MODULES := libinit_zl1
TARGET_PLATFORM_DEVICE_BASE := /devices/soc/

# liblights
TARGET_PROVIDES_LIBLIGHT := true

# Sensors
USE_SENSOR_MULTI_HAL := true

# NFC
TARGET_USES_NQ_NFC := true
BOARD_NFC_CHIPSET := pn548

# ANT+
BOARD_ANT_WIRELESS_DEVICE := "qualcomm-uart"

# Crypto
TARGET_HW_DISK_ENCRYPTION := true
TARGET_CRYPTFS_HW_PATH := $(BOARD_PATH)/cryptfs_hw

# Increase coldboot timeout
#TARGET_INCREASES_COLDBOOT_TIMEOUT := true

# CNE and DPM
TARGET_LDPRELOAD := libNimsWrap.so
BOARD_USES_QCNE := true

#keymaster
TARGET_PROVIDES_KEYMASTER := true

PRODUCT_BOOT_JARS += com.qti.dpmframework dpmapi com.qti.location.sdk

# selinux
include device/qcom/sepolicy/sepolicy.mk

BOARD_SEPOLICY_DIRS += $(BOARD_PATH)/sepolicy

BOARD_SECCOMP_POLICY += $(BOARD_PATH)/seccomp

WITH_DEXPREOPT := true

# Recovery:Start
TARGET_RECOVERY_FSTAB := $(BOARD_PATH)/configs/fstab.qcom
TW_THEME := portrait_hdpi
BOARD_HAS_NO_REAL_SDCARD := true
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_DEFAULT_LANGUAGE := en
#TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/soc/6a00000.ssusb/6a00000.dwc3/gadget/lun%d/file"
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_EXCLUDE_SUPERSU := true
TW_EXTRA_LANGUAGES := true
TW_INCLUDE_CRYPTO := true
TW_NEW_ION_HEAP := true
TW_INCLUDE_NTFS_3G := true
TW_DEFAULT_BRIGHTNESS := 180
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
