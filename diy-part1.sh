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
    - name: Import external feeds
      working-directory: ./openwrt
      run: |
        git clone https://github.com/xiaorouji/openwrt-passwall.git package/xiaorouji
        git clone https://github.com/freifunk/openwrt-packages.git package/freifunk
        git clone https://github.com/kenzok8/small.git package/kenzok
        git clone https://github.com/kenzok8/openwrt-packages.git package/kenzok
        git clone https://github.com/fw876/helloworld package/helloworld
        ./scripts/feeds update freifunk
        ./scripts/feeds install -a -p freifunk
