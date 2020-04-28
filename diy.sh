#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

# 使用旧版的upnp
# 删除现有的包
rm -rf feeds/packages/net/miniupnpd
rm -rf feeds/luci/applications/luci-app-upnp
# 使用自定义的包
cp -rf files/miniupnpd feeds/packages/net/
cp -rf files/luci-app-upnp feeds/luci/applications/