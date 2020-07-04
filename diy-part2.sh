#!/bin/bash
#============================================================
# https://github.com/Atroc-0625/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
# Lisence: MIT
# Author: Atroc-0625
#============================================================

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

# 修改默认主题
sed -i 's/luci-theme-bootstrap/luci-theme-atmaterial/g' feeds/luci/collections/luci/Makefile

# 修改主机名
sed -i '/uci commit system/i\uci set system.@system[0].hostname=Atroc-x86' package/lean/default-settings/files/zzz-default-settings

# 获取luci-app-adguardhome
#git clone https://github.com/rufengsuixing/luci-app-adguardhome package/diy-packages/luci-app-adguardhome

# 获取hello world和依赖
#git clone https://github.com/jerrykuku/lua-maxminddb package/diy-packages/helloworld/lua-maxminddb
#git clone https://github.com/jerrykuku/luci-app-vssr package/diy-packages/helloworld/luci-app-vssr

# 获取passwall
#git clone -b 3.6-40 https://github.com/liuran001/luci-app-passwall package/diy-packages/passwall

# 获取Lienol-package
#git clone https://github.com/Lienol/openwrt-package package/diy-packages/lienol

# 获取luci-app-diskman和依赖
#mkdir -p package/diy-packages/luci-app-diskman && \
#mkdir -p package/diy-packages/parted && \
#wget https://raw.githubusercontent.com/lisaac/luci-app-diskman/master/Makefile -O package/diy-packages/luci-app-diskman/Makefile
#wget https://raw.githubusercontent.com/lisaac/luci-app-diskman/master/Parted.Makefile -O package/diy-packages/parted/Makefile

# 获取luci-app-serverchan
#git clone https://github.com/tty228/luci-app-serverchan package/diy-packages/luci-app-serverchan

# 获取luci-app-openclash 编译po2lmo
#git clone -b master https://github.com/vernesong/OpenClash package/diy-packages/openclash
#pushd package/diy-packages/openclash/luci-app-openclash/tools/po2lmo
#make && sudo make install
#popd

# 清除默认主题
#sed -i '/set luci.main.mediaurlbase=\/luci-static\/bootstrap/d' feeds/luci/themes/luci-theme-bootstrap/root/etc/uci-defaults/30_luci-theme-bootstrap

# 清除旧版argon主题并拉取最新版
pushd package/lean
rm -rf luci-theme-argon
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon luci-theme-argon
popd

echo 'All right!'
