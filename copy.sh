#!/bin/bash

LEDE_BASEDIR=/home/lucas/lede_src


if [ ! -d "$LEDE_BASEDIR" ]; then
    echo "LEDE_BASEDIR does not exist, exiting"
    exit 1
fi

# copy over patches for netifd and ath9k
mkdir -p "$LEDE_BASEDIR"/package/network/config/netifd/patches
cp patches/900-ovs.patch "$LEDE_BASEDIR"/package/network/config/netifd/patches/

cp patches/905-ath9k-bssid-mask.patch "$LEDE_BASEDIR"/package/kernel/mac80211/patches/
cp patches/906-multi_rate_retry_chain.patch "$LEDE_BASEDIR"/package/kernel/mac80211/patches/

# copy over profiles
cp profiles/200-Empower.mk "$LEDE_BASEDIR"/target/linux/x86/geode/profiles/
cp profiles/100-APU-Empower.mk "$LEDE_BASEDIR"/target/linux/x86/64/profiles/

# copy over config files
mkdir -p "$LEDE_BASEDIR"/files/etc/config
cp configs/* "$LEDE_BASEDIR"/files/etc/config/

echo "Prepared source, continue with adding and installing feeds, make menuconfig, make"
