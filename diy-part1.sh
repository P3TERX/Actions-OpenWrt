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
#↓此仓库包内容第一选择#
git clone https://github.com/garypang13/openwrt-packages.git
rm -rf openwrt-packages/luci-app-tencentddns/
rm -rf openwrt-packages/luci-app-ddnsto/
rm -rf openwrt-packages/ddnsto/
rm -rf openwrt-packages/luci-app-adguardhome/
rm -rf openwrt-packages/luci-app-dockerman/
rm -rf openwrt-packages/luci-app-k3screenctrl/
rm -rf openwrt-packages/luci-app-qosv4/
rm -rf openwrt-packages/luci-app-speederv2/
rm -rf openwrt-packages/sub-web/
rm -rf openwrt-packages/bpytop/
rm -rf openwrt-packages/luci-app-macvlan/
rm -rf openwrt-packages/luci-app-control-timewol/
rm -rf openwrt-packages/luci-app-control-webrestriction/
rm -rf openwrt-packages/luci-app-control-weburl/
rm -rf openwrt-packages/luci-app-timecontrol/
rm -rf openwrt-packages/luci-app-timewol
#↓保留单独插件#
git clone https://github.com/kenzok8/openwrt-packages.git kenzok8-packages
mkdir kenzok8
mv kenzok8-packages/luci-app-clash kenzok8/luci-app-clash
mv kenzok8-packages/luci-app-easymesh kenzok8/luci-app-easymesh
mv kenzok8-packages/luci-app-smartdns kenzok8/luci-app-smartdns
mv kenzok8-packages/luci-theme-argon_new kenzok8/luci-theme-argon_new
mv kenzok8-packages/luci-theme-atmaterial kenzok8/luci-theme-atmaterial
mv kenzok8-packages/luci-theme-ifit kenzok8/luci-theme-ifit
mv kenzok8-packages/luci-theme-opentomato kenzok8/luci-theme-opentomato
mv kenzok8-packages/luci-theme-opentomcat kenzok8/luci-theme-opentomcat
mv kenzok8-packages/luci-theme-opentopd kenzok8/luci-theme-opentopd
mv kenzok8-packages/screenshot kenzok8/screenshot
mv kenzok8-packages/smartdns kenzok8/smartdns
mv kenzok8-packages/luci-app-adguardhome kenzok8/luci-app-adguardhome
rm -rf kenzok8-packages/
#↓此仓库包内容管控#
git clone https://github.com/Lienol/openwrt-package.git Lienol-package
mkdir lienol
mv Lienol-package/luci-app-control-timewol/ lienol/luci-app-control-timewol/
mv Lienol-package/luci-app-control-webrestriction/ lienol/luci-app-control-webrestriction/
mv Lienol-package/luci-app-control-weburl/ lienol/luci-app-control-weburl/
mv Lienol-package/luci-app-timecontrol/ lienol/luci-app-timecontrol/
rm -rf Lienol-package/

#↓添加上面仓库存在问题的替换插件#
git clone https://github.com/superabbite1/openwrt-packages.git superabbite1
mv superabbite1/AdGuardHome AdGuardHome
rm -rf superabbite1/
git clone https://github.com/kenzok8/small.git
mv small/openssl1.1 openssl1.1
rm -rf small/
#↓ddnsto和linkease#
git clone https://github.com/linkease/nas-packages.git
#↓腾讯云ddns 目录在服务菜单中#
git clone https://github.com/MapesxGM/luci-app-tencentddns.git
#↓定时设置插件（比自带的autoreboot功能多一些，二选一，也可同时选择编译成功，然后选择1个使用）#
git clone https://github.com/sirpdboy/luci-app-autotimeset.git
#↓一款流量统计插件#
git clone https://github.com/AlexZhuo/luci-app-bandwidthd.git
#↓beardropper ssh防御脚本#
git clone https://github.com/NateLol/luci-app-beardropper.git
#↓IPTV助手#
#git clone https://github.com/riverscn/openwrt-iptvhelper.git
#↓高级设置#
git clone https://github.com/fszok/luci-app-advancedsetting.git

#↓灵缇游戏加速器（收费的）#
#git clong https://github.com/esirplayground/LingTiGameAcc.git
#git clone https://github.com/esirplayground/luci-app-LingTiGameAcc.git

#↓以下仓库独立特定插件单独地址（上面的包里都包含这里只用于单独使用）#
#git clone https://github.com/fw876/helloworld.git
#git clone https://github.com/destan19/OpenAppFilter.git
#git clone https://github.com/vernesong/OpenClash.git
#git clone https://github.com/Dreamacro/clash.git
#git clone https://github.com/awesome-openwrt/syncthing.git
#git clone https://github.com/awesome-openwrt/luci-app-syncthing.git

#↓文件助手#
#git clone https://github.com/awesome-openwrt/luci-app-fileassistant.git
#高级设置 删除了文件管理器 不会导致冲突#
#git clone https://github.com/fszok/luci-app-advanced.git

#↓使用这个freifunk仓库需要以下内容#
#git clone https://github.com/superabbite1/luci1.git
#git clone https://github.com/freifunk/openwrt-packages.git freifunk
#cd..
#./scripts/feeds clean
#./scripts/feeds update -a
#./scripts/feeds install -a
#./scripts/feeds update freifunk
#./scripts/feeds install -a -p freifunk
