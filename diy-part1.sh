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
cd package
git clone https://github.com/kenzok8/openwrt-packages.git
git clone https://github.com/kenzok8/small.git
#git clone https://github.com/kenzok8/small-package.git
git clone https://github.com/xiaorouji/openwrt-passwall.git
git clone https://github.com/fw876/helloworld.git
git clone https://github.com/destan19/OpenAppFilter.git
git clone https://github.com/vernesong/OpenClash.git
            #基于DNS的广告过滤 for OpenWrt↓#
git clone https://github.com/garypang13/luci-app-dnsfilter.git
            #另一种翻墙↓#
git clone https://github.com/garypang13/luci-app-bypass.git
git clone https://github.com/garypang13/smartdns-le.git
            #AdGuard home广告过滤↓#
#git clone https://github.com/rufengsuixing/luci-app-adguardhome.git
            #游戏加速器↓#
git clong https://github.com/esirplayground/LingTiGameAcc.git
git clone https://github.com/esirplayground/luci-app-LingTiGameAcc.git
           #esir的关闭路由器↓#
git clone https://github.com/esirplayground/luci-app-poweroff.git
           #定时设置插件↓#
git clone https://github.com/sirpdboy/luci-app-autotimeset.git
           #argon主题↓#
git clone https://github.com/jerrykuku/luci-theme-argon.git
           #一款流量统计插件↓#
git clone https://github.com/AlexZhuo/luci-app-bandwidthd.git
           #微信推送↓#
git clone https://github.com/tty228/luci-app-serverchan.git
#git clone https://github.com/superabbite1/luci1.git
#git clone https://github.com/freifunk/openwrt-packages.git freifunk
#cd..
#./scripts/feeds clean
#./scripts/feeds update -a
#./scripts/feeds install -a
#./scripts/feeds update freifunk
#./scripts/feeds install -a -p freifunk
