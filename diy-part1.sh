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
#!/bin/bash

if [ ! -d "./package/myapp" ];then
mkdir ./package/myapp
fi
cd ./package/myapp

echo "koolproxyR"
if [ ! -d "./koolproxyR" ];then
git clone https://github.com/tzxiaozhen88/koolproxyR.git
else
cd koolproxyR
git pull
cd ..
fi

echo "luci-app-adguardhome"
if [ ! -d "./luci-app-adguardhome" ];then
git clone https://github.com/rufengsuixing/luci-app-adguardhome.git
else
cd luci-app-adguardhome
git pull
cd ..
fi

echo "luci-app-mentohust"
if [ ! -d "./luci-app-mentohust" ];then
git clone https://github.com/BoringCat/luci-app-mentohust.git
else
cd luci-app-mentohust
git pull
cd ..
fi

echo "luci-app-mentohust Depends"
if [ ! -d "./MentoHUST-OpenWrt-ipk" ];then
git clone https://github.com/KyleRicardo/MentoHUST-OpenWrt-ipk.git
else
cd MentoHUST-OpenWrt-ipk
git pull
cd ..
fi

echo "luci-theme-argon"
if [ ! -d "./luci-theme-argon" ];then
git clone https://github.com/jerrykuku/luci-theme-argon.git
else
cd luci-theme-argon
git pull
cd ..
fi

echo "luci-theme-atmaterial"
if [ ! -d "./luci-theme-atmaterial" ];then
git clone https://github.com/openwrt-develop/luci-theme-atmaterial.git
else
cd luci-theme-atmaterial
git pull
cd ..
fi

echo "luci-theme-argon-mc"
if [ ! -d "./luci-theme-argon-mc" ];then
svn checkout https://github.com/project-openwrt/openwrt/trunk/package/lienol/luci-theme-argon-mc
else
cd luci-theme-argon-mc
svn update
cd ..
fi


echo "luci-theme-rosy"
if [ ! -d "./luci-theme-rosy" ];then
git clone https://github.com/rosywrt/luci-theme-rosy.git
else
cd luci-theme-rosy
git pull
cd ..
fi

echo "luci-theme-opentomcat"
if [ ! -d "./luci-theme-opentomcat" ];then
git clone https://github.com/Leo-Jo-My/luci-theme-opentomcat.git
else
cd luci-theme-opentomcat
git pull
cd ..
fi

echo "luci-theme-darkmatter"
if [ ! -d "./luci-theme-darkmatter" ];then
svn checkout https://github.com/project-openwrt/openwrt/trunk/package/ctcgfw/luci-theme-darkmatter
else
cd luci-theme-darkmatter
svn update
cd ..
fi

echo "luci-app-serverchan"
if [ ! -d "./luci-app-serverchan" ];then
svn checkout https://github.com/project-openwrt/openwrt/trunk/package/ctcgfw/luci-app-serverchan
else
cd luci-app-serverchan
svn update
cd ..
fi

echo "openwrt-mwol"
if [ ! -d "./openwrt-mwol" ];then
git clone https://github.com/Mleaf/openwrt-mwol.git
else
cd openwrt-mwol
git pull
cd ..
fi

echo "luci-app-ngrokc"
if [ ! -d "./luci-app-ngrokc" ];then
svn checkout https://github.com/project-openwrt/openwrt/trunk/package/ntlf9t/luci-app-ngrokc
else
cd luci-app-serverchan
svn update
cd ..
fi

echo "luci-app-ngrokc Depends"
if [ ! -d "./ngrokc" ];then
svn checkout https://github.com/project-openwrt/openwrt/trunk/package/ntlf9t/ngrokc
else
cd ngrokc
svn update
cd ..
fi

echo "luci-app-unblockneteasemusic"
if [ ! -d "./luci-app-unblockneteasemusic" ];then
svn checkout https://github.com/project-openwrt/openwrt/trunk/package/ctcgfw/luci-app-unblockneteasemusic
else
cd luci-app-unblockneteasemusic
svn update
cd ..
fi


echo "luci-app-openclash"
if [ ! -d "./OpenClash" ];then
mkdir ./OpenClash
cd ./OpenClash
git init
git remote add -f origin https://github.com/vernesong/OpenClash.git
git config core.sparsecheckout true
echo "luci-app-openclash" >> .git/info/sparse-checkout
git pull origin master
git branch --set-upstream-to=origin/master master
cd ..
else
cd ./OpenClash/luci-app-openclash
git pull origin master
cd ..
cd ..
fi

# ssr-plus-Jo软件及依赖
echo " "
echo "luci-app-ssr-plus-Jo"
if [ ! -d "./luci-app-ssr-plus-Jo" ];then
git clone https://github.com/Leo-Jo-My/luci-app-ssr-plus-Jo.git
cd luci-app-ssr-plus-Jo
sed -i 's/+PACKAGE_$(PKG_NAME)_INCLUDE_dnsforwarder:dnsforwarder/+PACKAGE_$(PKG_NAME)_INCLUDE_dnsforwarder:openwrt-dnsforwarder/g' ./Makefile
cd ..
else
cd luci-app-ssr-plus-Jo
git pull
sed -i 's/+PACKAGE_$(PKG_NAME)_INCLUDE_dnsforwarder:dnsforwarder/+PACKAGE_$(PKG_NAME)_INCLUDE_dnsforwarder:openwrt-dnsforwarder/g' ./Makefile
cd ..
fi

echo "#########################"
echo "#  ssr-plus-Jo Depends  #"
echo "#########################"
echo "openwrt-dnsforwarder"
if [ ! -d "./openwrt-dnsforwarder" ];then
svn checkout https://github.com/project-openwrt/openwrt/trunk/package/ntlf9t/openwrt-dnsforwarder
else
cd openwrt-dnsforwarder
svn update
cd ..
fi

echo "ssr-plus-Jo-my"
if [ ! -d "./my" ];then
git clone https://github.com/Leo-Jo-My/my.git
else
cd my
git pull
cd ..
fi

# passwall软件及依赖
if [ ! -d "./passwall" ];then
mkdir ./passwall
fi
cd ./passwall
echo " "
echo "luci-app-passwall"
if [ ! -d "./luci-app-passwall" ];then
svn checkout https://github.com/Lienol/openwrt-package/trunk/lienol/luci-app-passwall
else
cd luci-app-passwall
svn update
cd ..
fi

echo "######################"
echo "#  passwall Depends  #"
echo "######################"
echo "tcping"
if [ ! -d "./tcping" ];then
svn checkout https://github.com/Lienol/openwrt-package/trunk/package/tcping
else
cd tcping
svn update
cd ..
fi
echo "chinadns-ng"
if [ ! -d "./chinadns-ng" ];then
svn checkout https://github.com/Lienol/openwrt-package/trunk/package/chinadns-ng
else
cd chinadns-ng
svn update
cd ..
fi
echo "dns2socks"
if [ ! -d "./dns2socks" ];then
svn checkout https://github.com/Lienol/openwrt-package/trunk/package/dns2socks
else
cd dns2socks
svn update
cd ..
fi
echo "brook"
if [ ! -d "./brook" ];then
svn checkout https://github.com/Lienol/openwrt-package/trunk/package/brook
else
cd brook
svn update
cd ..
fi

echo "v2ray-plugin"
if [ ! -d "./v2ray-plugin" ];then
svn checkout https://github.com/Lienol/openwrt-package/trunk/package/v2ray-plugin
else
cd v2ray-plugin
svn update
cd ..
fi

# 返回到myapp文件夹
cd ..

pwd
# 隐藏老版本软件包
if [ -e "./my/openwrt-dnsforwarder/Makefile" ];then
mv ./my/openwrt-dnsforwarder/Makefile ./my/openwrt-dnsforwarder/Makefile_old
fi
if [ -e "./my/openwrt-v2ray-plugin/Makefile" ];then
mv ./my/openwrt-v2ray-plugin/Makefile ./my/openwrt-v2ray-plugin/Makefile_old
fi
if [ -e "./my/openwrt-simple-obfs/Makefile" ];then
mv ./my/openwrt-simple-obfs/Makefile ./my/openwrt-simple-obfs/Makefile_old
fi



