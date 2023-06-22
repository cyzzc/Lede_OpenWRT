#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

########### 修改默认IP ###########
sed -i 's/192.168.1.1/192.168.1.6/g' package/base-files/files/bin/config_generate

########### 更改主机名 ###########
sed -i "s/hostname='.*'/hostname='SZZzc_1288'/g" package/base-files/files/bin/config_generate

########### 把密码改成空 ###########
sed -i 's@.*CYXluq4wUazHjmCDBCqXF*@#&@g' package/lean/default-settings/files/zzz-default-settings

########### 更新lean的内置的smartdns版本 ###########
# sed -i 's/1.2022.38/1.2022.40/g' feeds/packages/net/smartdns/Makefile
# sed -i 's/5a2559f0648198c290bb8839b9f6a0adab8ebcdc/d792e5f7f71ce9320b341fe02135077e00fa3e21/g' feeds/packages/net/smartdns/Makefile
# sed -i 's/^PKG_MIRROR_HASH/#&/' feeds/packages/net/smartdns/Makefile

########### 更新lean的内置的open-vm-tools版本 ###########
sed -i 's/11.3.0/12.2.5/g' feeds/packages/utils/open-vm-tools/Makefile
sed -i 's/472d7c69cd4b344e9ced18962cebdd3943fd5f10/8e4cfd94553cfeeb45b195864a30ccb6b18d17ef/g' feeds/packages/utils/open-vm-tools/Makefile
sed -i 's/^PKG_MIRROR_HASH/#&/' feeds/packages/utils/open-vm-tools/Makefile

########### 安装smartdns（必选）###########
# git clone https://github.com/PikuZheng/smartdns.git package/smartdns
# git clone -b lede https://github.com/pymumu/luci-app-smartdns.git package/luci-app-smartdns
