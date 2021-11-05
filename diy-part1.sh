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
git clone https://github.com/fszok/fz-package.git
git clone https://github.com/kenzok8/openwrt-packages.git
git clone https://github.com/kenzok8/small.git
git clone https://github.com/xiaorouji/openwrt-passwall.git
#↓删除问题插件#
rm -rf fz-package/ddnsto/
rm -rf fz-package/luci-app-aliddns/
rm -rf fz-package/luci-app-control-timewol/
rm -rf fz-package/luci-app-control-webrestriction/
rm -rf fz-package/luci-app-control-weburl/
rm -rf fz-package/luci-app-ddnsto/
#rm -rf fz-package/luci-app-mentohust/
#rm -rf fz-package/openwrt-mentohust/
rm -rf fz-package/luci-app-syncthing/
rm -rf fz-package/luci-app-tencentddns/
rm -rf fz-package/luci-app-godproxy/
rm -rf fz-package/luci-app-netdata/
rm -rf lean/luci-app-netdata/

#↓支取有用的#
git clone https://github.com/kiddin9/openwrt-packages.git kiddin9-package
mkdir kiddin9
mv kiddin9-package/luci-app-syncthing kiddin9/luci-app-syncthing
mv kiddin9-package/luci-app-godproxy kiddin9/luci-app-godproxy
rm -rf kiddin9-package/

#↓此仓库包在kenzok8/small-package包含（这个包还未验证是否涵盖以上插件,初步看来比这个新可能也涵盖了fszok/fz-package里面的，截至2021年11月04日）#
git clone https://github.com/Lienol/openwrt-package.git Lienol-package
rm -rf Lienol-package/luci-app-syncthing/

#↓netdata#
git clone https://github.com/sirpdboy/luci-app-netdata.git
#↓高级设置 删除了文件管理器 不会导致冲突#
git clone https://github.com/fszok/luci-app-advanced.git
#↓腾讯云ddns 目录在服务菜单中#
git clone https://github.com/MapesxGM/luci-app-tencentddns.git
#↓高级设置#
git clone https://github.com/fszok/luci-app-advancedsetting.git
#↓mentohust认证#
#git clone https://github.com/BoringCat/luci-app-mentohust.git
#git clone https://github.com/KyleRicardo/MentoHUST-OpenWrt-ipk.git
#↓godproxy广告过滤上面已有暂时不用这个#
#git clone https://github.com/project-lede/luci-app-godproxy.git

#↓另一种翻墙，已经再其他库中包含 #
#git clone https://github.com/garypang13/luci-app-bypass.git

#↓定时设置插件（比自带的autoreboot功能多一些，二选一，也可同时选择编译成功，然后选择1个使用）#
git clone https://github.com/sirpdboy/luci-app-autotimeset.git
#↓一款流量统计插件#
git clone https://github.com/AlexZhuo/luci-app-bandwidthd.git
#↓beardropper ssh防御脚本#
git clone https://github.com/NateLol/luci-app-beardropper.git
mv luci-app-beardropper/po/zh_Hans/ luci-app-beardropper/po/zh-cn
#↓IPTV助手#
git clone https://github.com/riverscn/openwrt-iptvhelper.git
mv openwrt-iptvhelper/luci-app-iptvhelper/po/zh_Hans/ openwrt-iptvhelper/luci-app-iptvhelper/po/zh-cn
#git clone https://github.com/liuran001/openwrt-packages.git liuran001-pack
#mkdir liuran001
#mv liuran001-pack/iptvhelper liuran001/iptvhelper
#mv liuran001-pack/luci-app-iptvhelper liuran001/luci-app-iptvhelper
#rm -rf liuran001-pack/

#↓ddnsto和linkease#
git clone https://github.com/linkease/nas-packages.git
#xray server ?#
#git clone https://github.com/honwen/luci-app-xray.git

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

#↓使用这个freifunk仓库需要以下内容#
#git clone https://github.com/superabbite1/luci1.git
#git clone https://github.com/freifunk/openwrt-packages.git freifunk
#rm -rf ./feeds
#make distclean
#./scripts/feeds clean
#./scripts/feeds update -a
#./scripts/feeds install -a
#cd..
#rm -rf ./feeds
#make distclean
#./scripts/feeds clean
#./scripts/feeds update -a
#./scripts/feeds install -a
#./scripts/feeds update freifunk
#./scripts/feeds install -a -p freifunk
