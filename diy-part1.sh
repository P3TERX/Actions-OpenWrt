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
#!/bin/bash
#filebrowser
git clone https://github.com/filebrowser/filebrowser.git package/filebrowser
#adguardhome
git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package/luci-app-adguardhome
#可道云
git clone https://github.com/garypang13/luci-app-php-kodexplorer package/luci-app-php-kodexplorer
#SmartDNS
git clone https://github.com/garypang13/openwrt-smartdns.git package/
