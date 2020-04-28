#!/bin/bash

# 编译ATH79特定固件
cat >> .config <<EOF
CONFIG_TARGET_ath79=y
CONFIG_TARGET_ath79_generic=y
CONFIG_TARGET_ath79_generic_DEVICE_tplink_tl-wr845n-v3=y
EOF

# PACKAGE支持
cat >> .config <<EOF
# CONFIG_PACKAGE_dnsmasq is not set
CONFIG_PACKAGE_dnsmasq-full=y
EOF

# LuCI支持
cat >> .config <<EOF
CONFIG_PACKAGE_luci=y
CONFIG_LUCI_LANG_zh_Hans=y
CONFIG_PACKAGE_luci-app-flowoffload=m
CONFIG_PACKAGE_luci-app-fullconenat=m
CONFIG_PACKAGE_luci-app-ramfree=y
CONFIG_PACKAGE_luci-app-uhttpd=y
CONFIG_PACKAGE_luci-app-upnp=y
CONFIG_PACKAGE_luci-app-watchcat=y
CONFIG_PACKAGE_luci-app-wifischedule=y
CONFIG_PACKAGE_luci-app-wol=y
EOF

# LuCI主题
cat >> .config <<EOF
CONFIG_PACKAGE_luci-theme-material=y
EOF

# USB支持（默认不启用）
cat >> .config <<EOF
#CONFIG_PACKAGE_kmod-usb-core=y
#CONFIG_PACKAGE_kmod-usb-ehci=y
#CONFIG_PACKAGE_kmod-usb-ledtrig-usbport=y
#CONFIG_PACKAGE_kmod-usb-ohci=y
#CONFIG_PACKAGE_kmod-usb-storage=y
#CONFIG_PACKAGE_kmod-usb-storage-extras=y
#CONFIG_PACKAGE_kmod-usb-storage-uas=y
#CONFIG_PACKAGE_kmod-usb-uhci=y
#CONFIG_PACKAGE_kmod-usb2=y
#CONFIG_PACKAGE_kmod-usb3=y
#
#CONFIG_PACKAGE_kmod-fs-ext4=y
#CONFIG_PACKAGE_kmod-fs-ntfs=y
#CONFIG_PACKAGE_kmod-fs-vfat=y
#CONFIG_PACKAGE_kmod-fuse=y
#
#CONFIG_PACKAGE_kmod-nls-base=y
#CONFIG_PACKAGE_kmod-nls-cp437=y
#CONFIG_PACKAGE_kmod-nls-iso8859-1=y
#CONFIG_PACKAGE_kmod-nls-utf8=y
#
#CONFIG_PACKAGE_badblocks=y
#CONFIG_PACKAGE_e2fsprogs=y
#CONFIG_PACKAGE_ntfs-3g=y
#
#CONFIG_PACKAGE_block-mount=y
#
#CONFIG_PACKAGE_fdisk=y
#CONFIG_PACKAGE_blkid=y
#CONFIG_PACKAGE_lsblk=y
EOF