#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.77.1/g' package/base-files/files/bin/config_generate

#删除默认密码
sed -i "/CYXluq4wUazHjmCDBCqXF/d" package/lean/default-settings/files/zzz-default-settings

#设置FAT为utf8编码
find target/linux -path "target/linux/*/config-*" | xargs -i sed -i '$a CONFIG_ACPI=y\nCONFIG_X86_ACPI_CPUFREQ=y\n \
CONFIG_NR_CPUS=128\nCONFIG_FAT_DEFAULT_IOCHARSET="utf8"' {}

#默认主题改为argon
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' ./feeds/luci/collections/luci/Makefile

# Web sysupgrade Fix
#sed -i '/^.*hc5962.*/d' target/linux/ramips/mt7621/base-files/lib/upgrade/platform.sh
# 适配4.14内核
#sed -i 's/<&gpio /<\&gpio0 /g' ./target/linux/ramips/dts/mt7621_hiwifi_hc5962-spi.dts

# 网络接口适配
sed -i ':a;N;$!ba;s/hiwifi,hc5962/&|\\\n\t&-spi/1' ./target/linux/ramips/mt7621/base-files/etc/board.d/02_network
sed -i ':a;N;$!ba;s/d-team,newifi-d2/&|\\\n\thiwifi,hc5962-spi/2' ./target/linux/ramips/mt7621/base-files/etc/board.d/02_network

cat >> ./target/linux/ramips/image/mt7621.mk <<EOF
define Device/hiwifi_hc5962-spi
  $(Device/uimage-lzma-loader)
  IMAGE_SIZE := 16064k
  DEVICE_VENDOR := HiWiFi
  DEVICE_MODEL := HC5962-SPI
  DEVICE_PACKAGES := kmod-mt7603 kmod-mt76x2 wpad-openssl
endef
TARGET_DEVICES += hiwifi_hc5962-spi
EOF
sed -i 's/^[ \t]*//g' ./target/linux/ramips/image/mt7621.mk

#设置32m闪存
#sed -i 's/0xfb0000/0x1fb0000/g' target/linux/ramips/dts/mt7621_hiwifi_hc5962-spi.dts
#sed -i 's/16064k/32448k/g' target/linux/ramips/image/mt7621.mk
