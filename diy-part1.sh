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
#↓此仓库包内容包括了大部分kenzok8/openwrt-packages中的内容，第一选择#
git clone https://github.com/liuran001/openwrt-packages.git
#↓上面的包有问题的插件暂时删除#
rm -rf openwrt-packages/adguardhome/
rm -rf openwrt-packages/luci-app-vssr-plus/
rm -rf openwrt-packages/luci-app-clash/
#↓以下为liuran001/openwrt-packages中用到的依赖包#
git clone https://github.com/wongsyrone/openwrt-Pcap_DNSProxy.git
git clone https://github.com/superabbite1/atinout.git
git clone https://github.com/Leo-Jo-My/diy.git
#↓此仓库包为liuran001/openwrt-packages的补充选择#
#git clone https://github.com/kenzok8/openwrt-packages.git
#git clone https://github.com/superabbite1/openwrt-packages.git
#↓此仓库包内容基本唯一建议必选#
git clone https://github.com/Lienol/openwrt-package.git Lienol-package
#↓此仓库包含了kenzok8/small和xiaorouji/openwrt-passwall，仅缺small里的openssl1.1，第一选择#
git clone https://github.com/kenzok8/small-package.git
#↓上面的包有问题的插件暂时删除#
rm -rf small-package/luci-app-clash/
rm -rf small-package/luci-app-openclash/
rm -rf small-package/adguardhome/
#git clone https://github.com/kenzok8/small.git
#git clone https://github.com/xiaorouji/openwrt-passwall.git

#↓不使用kenzok8/small这个源时要单独使用这个clash #
git clone https://github.com/frainzy1477/luci-app-clash.git
#↓esir的关闭路由器#
git clone https://github.com/esirplayground/luci-app-poweroff.git
#↓定时设置插件（比自带的autoreboot功能多一些，二选一，也可同时选择编译成功，然后选择1个使用）#
git clone https://github.com/sirpdboy/luci-app-autotimeset.git
#↓一款流量统计插件#
git clone https://github.com/AlexZhuo/luci-app-bandwidthd.git
#↓ddnsto内网穿透 不确定是哪个包要测试#
git clone https://github.com/linkease/ddnsto-openwrt.git
#git clone https://github.com/linkease/nas-packages.git
#beardropper ssh防御脚本#
git clone https://github.com/NateLol/luci-app-beardropper.git
#mia 上网时间控制 要测试不确定是否可用#
git clone https://github.com/awesome-openwrt/luci-app-control-mia.git
#onliner在线状态#
git clone https://github.com/rufengsuixing/luci-app-onliner.git

#↓灵缇游戏加速器（收费的）#
#git clong https://github.com/esirplayground/LingTiGameAcc.git
#git clone https://github.com/esirplayground/luci-app-LingTiGameAcc.git

#↓以下仓库独立特定插件单独地址（上面的包里都包含这里只用于单独使用）#
#git clone https://github.com/fw876/helloworld.git
#git clone https://github.com/destan19/OpenAppFilter.git
#git clone https://github.com/vernesong/OpenClash.git
#git clone https://github.com/Dreamacro/clash.git
#https://github.com/awesome-openwrt/syncthing.git
#https://github.com/awesome-openwrt/luci-app-syncthing.git
#↓godproxy广告过滤 在kenzok8/small-package包含#
#git clone https://github.com/project-lede/luci-app-godproxy.git
#↓mentohust锐捷认证客户端 不确定是哪个包要测试  在kenzok8/small-package包含#
#git clone https://github.com/jing955/Mentohust.git
#git clone https://github.com/DragonBluep/mentohust-openwrt.git
#git clone https://github.com/Apocalypsor/Actions-Openwrt-Custom.git
#↓另一种翻墙 在kenzok8/small-package包含#
#git clone https://github.com/garypang13/luci-app-bypass.git
#git clone https://github.com/garypang13/smartdns-le.git

#↓使用这个freifunk仓库需要以下内容#
#git clone https://github.com/superabbite1/luci1.git
#git clone https://github.com/freifunk/openwrt-packages.git freifunk
#cd..
#./scripts/feeds clean
#./scripts/feeds update -a
#./scripts/feeds install -a
#./scripts/feeds update freifunk
#./scripts/feeds install -a -p freifunk
