#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
sed -i 's/192.168.2.2/192.168.50.5/g' package/base-files/files/bin/config_generate
#git clone https://github.com/Lienol/openwrt
#./scripts/feeds update -a
#./scripts/feeds install -a
