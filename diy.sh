#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate
rm -rf feeds/lienol/package/v2ray
rm -rf feeds/lienol/package/openssl1.1
rm -rf feeds/lienol/package/trojan
rm -rf feeds/lienol/package/ipt2socks
rm -rf feeds/lienol/package/shadowsocksr-libev
rm -rf feeds/lienol/package/pdnsd-alt
rm -rf package/lean/kcptun
rm -rf package/lean/verysync
rm -rf package/lean/luci-app-kodexplorer
rm -rf package/lean/luci-app-pppoe-relay
rm -rf package/lean/luci-app-pptp-server
rm -rf package/lean/luci-app-v2ray-server
rm -rf package/lean/luci-app-verysync
git clone https://github.com/Lienol/openwrt-package
