#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default

# git clone https://github.com/EOYOHOO/UA2F.git package/UA2F
# git clone https://github.com/Zxilly/UA2F.git package/UA2F
# git clone https://github.com/EOYOHOO/rkp-ipid.git package/rkp-ipid

git clone https://github.com/MrTaiKe/Action_OpenWrt_Xiaomi_R4AGv2.git ./replace
cp ./replace/LEDE/hw2add/476-mtd-spi-nor-add-eon-en25q128.patch  ./target/linux/generic/pending-5.10/476-mtd-spi-nor-add-eon-en25q128.patch
cp ./replace/LEDE/hw2add/mt7621_xiaomi_mi-router-4a-gigabit-v2.dts  ./target/linux/ramips/dts/mt7621_xiaomi_mi-router-4a-gigabit-v2.dts
cp ./replace/LEDE/hw2add/mt7621.mk  ./target/linux/ramips/image/mt7621.mk
cp ./replace/LEDE/hw2add/01_leds  ./target/linux/ramips/mt7621/base-files/etc/board.d/01_leds
cp ./replace/LEDE/hw2add/02_network  ./target/linux/ramips/mt7621/base-files/etc/board.d/02_network
echo "copy ok"
rm -rf ./replace
echo "del ok"
