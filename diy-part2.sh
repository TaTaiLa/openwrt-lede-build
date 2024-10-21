#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

# Modify default theme
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# Modify hostname
#sed -i 's/OpenWrt/P3TERX-Router/g' package/base-files/files/bin/config_generate

git clone https://github.com/EOYOHOO/UA2F.git package/UA2F
git clone https://github.com/EOYOHOO/rkp-ipid.git package/rkp-ipid

git clone https://github.com/MrTaiKe/Action_OpenWrt_Xiaomi_R4AGv2.git ./replace
cp ./replace/LEDE/hw2add/476-mtd-spi-nor-add-eon-en25q128.patch  ./target/linux/generic/pending-5.10/476-mtd-spi-nor-add-eon-en25q128.patch
cp ./replace/LEDE/hw2add/mt7621_xiaomi_mi-router-4a-gigabit-v2.dts  ./target/linux/ramips/dts/mt7621_xiaomi_mi-router-4a-gigabit-v2.dts
cp ./replace/LEDE/hw2add/mt7621.mk  ./target/linux/ramips/image/mt7621.mk
cp ./replace/LEDE/hw2add/01_leds  ./target/linux/ramips/mt7621/base-files/etc/board.d/01_leds
cp ./replace/LEDE/hw2add/02_network  ./target/linux/ramips/mt7621/base-files/etc/board.d/02_network
