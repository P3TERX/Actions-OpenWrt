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

# 修改LAN IP
#sed -i 's/192.168.1.1/10.10.10.10/g' package/base-files/files/bin/config_generate
device_name='Xiaomi_MIne'
#echo "修改机器名称"
#sed -i "s/OpenWrt/$device_name/g" ./package/base-files/files/bin/config_generate

wifi_name=$device_name
#echo "修改wifi名称"
#sed -i "s/OpenWrt/$wifi_name/g" ./package/kernel/mac80211/files/lib/wifi/mac80211.sh

samba4 开放root用户
sed -i "s/invalid users = root/#invalid users = root/g" ./package/lean/samba4/files/smb.conf.template

sed -i 's/openwrt.proxy.ustclug.org/mirrors.cloud.tencent.com/lede/g' ./package/lean/default-settings/files/zzz-default-settings

# Modify default theme
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

#添加额外软件包
