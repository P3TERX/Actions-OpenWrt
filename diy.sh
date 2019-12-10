#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate
git clone https://github.com/Ameykyl/luci-app-koolproxyR package
git clone https://github.com/Ameykyl/luci-app-ssr-plus-jo package
git clone https://github.com/tty228/luci-app-serverchan package
git clone https://github.com/rufengsuixing/luci-app-adguardhome package
git clone https://github.com/rosywrt/luci-theme-rosy package
git clone https://github.com/rosywrt/luci-theme-purple package
#git clone https://github.com/vernesong/OpenClash/tree/master/luci-app-openclash package
#git clone https://github.com/Lienol/openwrt-package package
