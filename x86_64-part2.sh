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
# Modify default IP
sed -i 's/192.168.1.1/192.168.100.250/g' package/base-files/files/bin/config_generate
#sed -i 's/192.168.1.1/192.168.18.1/g' package/base-files/files/bin/config_generate
#sed -i 's/192.168.1.1/192.168.18.1/g' package/base-files/luci2/bin/config_generate
