LOCAL_PATH := device/xiaomi/jasmine_sprout

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

# Platform
TARGET_BOARD_PLATFORM := sdm660
TARGET_BOARD_PLATFORM_GPU := qcom-adreno512

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := sdm660
TARGET_NO_BOOTLOADER := true
TARGET_USES_UEFI := true

# Enable CPUSets
ENABLE_CPUSETS := true
ENABLE_SCHEDBOOST := true

# Kernel
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
BOARD_KERNEL_CMDLINE := console=ttyMSM0,115200,n8
BOARD_KERNEL_CMDLINE += androidboot.console=ttyMSM0
BOARD_KERNEL_CMDLINE += earlycon=msm_serial_dm,0xc170000
BOARD_KERNEL_CMDLINE += androidboot.hardware=qcom
BOARD_KERNEL_CMDLINE += user_debug=31
BOARD_KERNEL_CMDLINE += msm_rtb.filter=0x37
BOARD_KERNEL_CMDLINE += ehci-hcd.park=3
BOARD_KERNEL_CMDLINE += lpm_levels.sleep_disabled=1
BOARD_KERNEL_CMDLINE += sched_enable_hmp=1
BOARD_KERNEL_CMDLINE += sched_enable_power_aware=1
BOARD_KERNEL_CMDLINE += service_locator.enable=1
BOARD_KERNEL_CMDLINE += swiotlb=1
BOARD_KERNEL_CMDLINE += firmware_class.path=/vendor/firmware_mnt/image
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
BOARD_KERNEL_CMDLINE += loop.max_part=7
BOARD_KERNEL_CMDLINE += androidboot.configfs=true
BOARD_KERNEL_CMDLINE += androidboot.fastboot=1
BOARD_KERNEL_CMDLINE += androidboot.usbcontroller=a800000.dwc3
BOARD_KERNEL_CMDLINE += skip_override
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE    := 4096
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_RAMDISK_OFFSET     := 0x01000000
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilt/Image.gz-dtb

# Partitions
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_FLASH_BLOCK_SIZE := 262144  # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true
BOARD_ROOT_EXTRA_FOLDERS := bt_firmware dsp firmware persist
BOARD_SYSTEMIMAGE_JOURNAL_SIZE := 0
BOARD_SYSTEMIMAGE_EXTFS_INODE_COUNT := 4096
BOARD_HAS_REMOVABLE_STORAGE := true
BOARD_SUPPRESS_SECURE_ERASE := true
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_VENDOR := vendor

# Recovery
TARGET_RECOVERY_WIPE := $(LOCAL_PATH)/recovery/root/etc/recovery.wipe
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery/root/etc/recovery.fstab

# Board Properties
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_SELECT_BUTTON := true

# TWRP Configuration
TW_THEME := portrait_hdpi
BOARD_HAS_NO_REAL_SDCARD := true
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_EXTRA_LANGUAGES := true
TW_NO_SCREEN_BLANK := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TARGET_RECOVERY_QCOM_RTC_FIX := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TW_INCLUDE_NTFS_3G := true
RECOVERY_SDCARD_ON_DATA := true
TW_EXCLUDE_DEFAULT_USB_INIT := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TARGET_RECOVERY_DEVICE_MODULES += android.hardware.boot@1.0
TW_RECOVERY_ADDITIONAL_RELINK_FILES := ${OUT_DIR}/target/product/jasmine_sprout/system/lib64/android.hardware.boot@1.0.so
TW_SCREEN_BLANK_ON_BOOT := true
TW_INCLUDE_REPACKTOOLS := true
TW_USE_TOOLBOX := true
TW_DEVICE_VERSION := 4
TW_EXCLUDE_TWRPAPP := true
TARGET_USES_LOGD := true
TWRP_INCLUDE_LOGCAT := true

# Security Patch Hack to prevent Anti Rollback
PLATFORM_SECURITY_PATCH := 2025-12-31
ALLOW_MISSING_DEPENDENCIES := true

# Crypto
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_CRYPTO_FBE := true

# A/B partition device flags
BOARD_USES_RECOVERY_AS_BOOT := true
AB_OTA_UPDATER := true

# SHRP Configuration
SHRP_PATH := device/xiaomi/jasmine_sprout
SHRP_MAINTAINER := XRed_CubeX
SHRP_DEVICE_CODE := jasmine_sprout
SHRP_EDL_MODE := 1
SHRP_INTERNAL := /sdcard
SHRP_OTG := /usb-otg
SHRP_FLASH := 1
SHRP_FONP_1 := /sys/class/leds/led:torch_0/brightness
SHRP_FONP_2 := /sys/class/leds/led:torch_1/brightness
SHRP_FONP_3 := /sys/class/leds/led:torch_2/brightness
SHRP_FONP_4 := /sys/class/leds/led:switch_0/brightness
SHRP_FONP_5 := /sys/class/leds/led:switch_1/brightness
SHRP_FLASH_MAX_BRIGHTNESS := 100
SHRP_AB := true
SHRP_REC_TYPE := Treble
SHRP_DEVICE_TYPE := A/B
SHRP_OFFICIAL := true
SHRP_EXPRESS := true
