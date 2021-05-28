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
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

#删除原来的argon
rm -rf  package/lean/luci-theme-argon

#添加老竭力的argon主题
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/lean/luci-theme-argon

#添加老竭力的argon.config
git clone https://github.com/jerrykuku/luci-app-argon-config.git package/lean/luci-app-argon-config

#添加adguardhome插件
git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package/lean/luci-app-adguardhome
git clone https://github.com/qianmuyixiao/adguardhome/tree/main.git package/lean/adguardhome

#添加OpenClash插件
git clone https://github.com/vernesong/OpenClash.git package/lean/OpenClash

#添加passwall插件
#git clone https://github.com/xiaorouji/openwrt-passwall.git package/lean/openwrt-passwall

#添加smartdns插件
#git clone https://github.com/qianmuyixiao/luci-app-smartdns.git package/lean/luci-app-smartdns
#git clone https://github.com/qianmuyixiao/smartdns.git package/lean/smartdns

#添加vssr插件
#git clone https://github.com/jerrykuku/lua-maxminddb.git package/lean/lua-maxminddb
#git clone https://github.com/jerrykuku/luci-app-vssr.git package/lean/luci-app-vssr

#添加一键安装到 emmc 脚本
#git clone https://github.com/tuanqing/install-program.git package/lean/install-program
