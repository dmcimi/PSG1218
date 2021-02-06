#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: eSirPlayground
# Youtube Channel: https://goo.gl/fvkdwm 
#=================================================
#1. Modify default IP
# Modify default IP
sed -i 's/192.168.1.1/192.168.8.1/g' package/base-files/files/bin/config_generate

# Modify the version number
sed -i 's/OpenWrt/Leopard build $(date "+%Y.%m.%d") @ OpenWrt/g' package/default-settings/files/zzz-default-settings

# 添加新的主题包
git clone https://github.com/jerrykuku/luci-theme-argon/releases/download/v1.7.0/luci-theme-argon_1.7.0-20200909_all.ipk

# 去除默认主题
sed -i '/set luci.main.mediaurlbase=\/luci-static\/bootstrap/d' feeds/luci/themes/luci-theme-bootstrap/root/etc/uci-defaults/30_luci-theme-bootstrap
