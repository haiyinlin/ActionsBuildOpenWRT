#!/bin/bash

# 1. 删除源码自带的旧版 mosdns 和 v2ray-geodata
#    脚本的当前目录已经是 openwrt/，所以可以直接操作
echo 'Removing old mosdns and v2ray-geodata...'
find ./feeds -maxdepth 3 -type f -path '*/luci-app-mosdns/Makefile' | xargs -r rm -f
find ./feeds -maxdepth 3 -type d -path '*/v2ray-geodata' | xargs -r rm -rf

# 2. 克隆 sbwml 的新版 mosdns 和 v2ray-geodata 源码
echo 'Cloning new mosdns and v2ray-geodata...'
git clone https://github.com/sbwml/luci-app-mosdns -b v5 package/mosdns
git clone https://github.com/sbwml/v2ray-geodata package/v2ray-geodata


# 加入万吉
git clone  https://github.com/gdy666/luci-app-lucky.git package/lucky

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#sed -i '$a src-git helloworld https://github.com/fw876/helloworld' ./feeds.conf.default
#sed -i '$a src-git passwall https://github.com/xiaorouji/openwrt-passwall' ./feeds.conf.default
#sed -i '$a src-git helloworld https://github.com/fw876/helloworld.git' ./feeds.conf.default
#sed -i '$a src-git nikki https://github.com/nikkinikki-org/OpenWrt-nikki.git;main' ./feeds.conf.default
sed -i '$a src-git netspeedtest https://github.com/sirpdboy/netspeedtest.git' ./feeds.conf.default
sed -i '$a src-git kenzo https://github.com/kenzok8/openwrt-packages' ./feeds.conf.default
sed -i '$a src-git nikki https://github.com/nikkinikki-org/OpenWrt-nikki.git;main' ./feeds.conf.default

# homeproxy
#git clone --depth=1 https://github.com/immortalwrt/homeproxy.git package/homeproxy
