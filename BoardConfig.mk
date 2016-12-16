USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/samsung/j3110/BoardConfigVendor.mk

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := unknown
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_BOOTLOADER_BOARD_NAME := j3110

BOARD_KERNEL_CMDLINE := console=null androidboot.hardware=qcom user_debug=23 msm_rtb.filter=0x3F ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/samsung/j3110/kernel

BOARD_HAS_NO_SELECT_BUTTON := true

#twrp
#RECOVERY_VARIANT := twrp
TW_THEME := portrait_hdpi
#TW_EXTRA_LANGUAGES := true
#TW_DEFAULT_LANGUAGE := zh_CN
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TARGET_RECOVERY_FSTAB := device/samsung/j3110/twrp.fstab
TW_HAS_DOWNLOAD_MODE := true
TW_NO_REBOOT_BOOTLOADER := true
TW_NO_REBOOT_FASTBOOT := true
#TW_EXCLUDE_SUPERSU := true
BOARD_MKBOOTIMG_ARGS := --dt device/samsung/j3110/dt.img --kernel_offset 0x00008000 --ramdisk_offset 0x02000000 --tags_offset 0x01e00000
#BOARD_USE_CUSTOM_RECOVERY_FONT := \"fontcn46_28x73.h\"
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun%d/file
