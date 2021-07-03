#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
# git clone https://github.com/siropboy/sirpdboy-package package/sirpdboy-package

#========================================================================================================
svn co https://github.com/liuran001/openwrt-packages/tree/packages/adguardhome package/adguardhome
# git clone https://github.com/tty228/luci-app-serverchan.git package/serverchan
# git clone https://github.com/project-lede/luci-app-godproxy.git package/godproxy

# git clone https://github.com/riverscn/openwrt-iptvhelper.git package/iptvhelper
# git clone https://github.com/NateLol/luci-app-beardropper.git package/beardropper

# git clone https://github.com/apple/cups.git package/cups
# git clone https://github.com/jerrykuku/luci-app-jd-dailybonus.git package/jerrykuku-jd-dailybonus
# svn co https://github.com/281677160/openwrt-package/trunk/luci-app-smartdns package/luci-app-smartdns

#https://github.com/jerrykuku/luci-theme-argon
# git clone https://github.com/kongfl888/luci-app-adguardhome.git package/adguardhome
# git clone https://github.com/destan19/OpenAppFilter.git package/OpenAppFilter
# git clone https://github.com/jefferymvp/luci-app-koolproxyR.git package/koolproxyR
# git clone https://github.com/project-openwrt/luci-app-koolproxyR.git package/koolproxyR
#========================================================================================================
# 删除固件默认登录密码
#sed -i "/CYXluq4wUazHjmCDBCqXF/d" package/lean/default-settings/files/zzz-default-settings
#========================================================================================================
