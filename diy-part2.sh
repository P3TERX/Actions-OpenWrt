#!/bin/bash
#============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#============================================================

 Modify default IP
sed -i 's/192.168.1.1/10.10.10.11/g' package/base-files/files/bin/config_generate
# git clone https://github.com/s1oz/luci-app-koolproxyR.git ./package/luci-app-koolproxyR
# git clone https://github.com/rufengsuixing/luci-app-adguardhome.git ./package/luci-app-adguardhome
# git clone https://github.com/pymumu/luci-app-smartdns.git ./package/luci-app-smartdns
# git clone https://github.com/KFERMercer/luci-app-serverchan.git ./package/luci-app-serverchan
# git clone https://github.com/xiaorouji/openwrt-package.git ./package/luci-app-passwall
# git clone https://github.com/xiaorouji/openwrt-package.git ./package/luci-app-filebrowser
