#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate
git clone https://github.com/hong0980/luci-app-passwall.git

git clone https://github.com/jikuohong/luci-app-serverchan.git

git clone https://github.com/rufengsuixing/luci-app-adguardhome.git

git clone https://github.com/kuoruan/luci-app-kcptun.git package/luci-app-kcptun

git clone https://github.com/jerrykuku/luci-app-vssr.git

./scripts/feeds update -a

./scripts/feeds install -a
