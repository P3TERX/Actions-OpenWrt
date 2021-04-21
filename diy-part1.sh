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
#cd package
#git clone https://github.com/xiaorouji/openwrt-passwall.git
#git clone https://github.com/kenzok8/openwrt-packages.git
#git clone https://github.com/kenzok8/small.git
#git clone https://github.com/fw876/helloworld.git
#git clone https://github.com/destan19/OpenAppFilter.git
#git clone https://github.com/freifunk/openwrt-packages.git freifunk
#./scripts/feeds update freifunk
#./scripts/feeds install -a -p freifunk
