#!/bin/bash



# 加入万吉
git clone  https://github.com/gdy666/luci-app-lucky.git package/lucky
# Modify default IP
sed -i 's/192.168.1.1/192.168.100.250/g' package/base-files/files/bin/config_generate
#sed -i 's/192.168.1.1/192.168.18.1/g' package/base-files/files/bin/config_generate
#sed -i 's/192.168.1.1/192.168.18.1/g' package/base-files/luci2/bin/config_generate
