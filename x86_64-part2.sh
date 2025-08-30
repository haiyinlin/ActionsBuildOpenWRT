#!/bin/bash

sed -i 's/llvm.download-ci-llvm=true/llvm.download-ci-llvm=false/g' /feeds/packages/lang/rust/Makefile


# Modify default IP
sed -i 's/192.168.1.1/192.168.100.253/g' package/base-files/files/bin/config_generate
#sed -i 's/192.168.1.1/192.168.18.1/g' package/base-files/files/bin/config_generate
#sed -i 's/192.168.1.1/192.168.18.1/g' package/base-files/luci2/bin/config_generate
