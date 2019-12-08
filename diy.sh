#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate
sed -i 's/'OpenWrt'/'FreeJ233'/g' package/base-files/files/bin/config_generate
sed -i 's/root::0:0:99999:7:::/root:$1$xx6y.OEi$TtpqSyLy5Fz8SF8f9DRVy.:18217:0:99999:7:::/g' package/base-files/files/etc/shadow
git clone https://github.com/happyzhang1995/luci-app-adguardhome package/lean/luci-app-adguardhome
git clone https://github.com/happyzhang1995/openwrt-adguardhome package/lean/openwrt-adguardhome
git clone https://github.com/Lienol/openwrt-package/tree/master/lienol/chinadns package/lean/chinadns
git clone https://github.com/Lienol/openwrt-package/tree/master/lienol/luci-app-passwall package/lean/luci-app-passwall
