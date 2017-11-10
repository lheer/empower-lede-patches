#
# Copyright (C) 2009 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

define Profile/apu_empower
	NAME:=PCEngines APU (EmPOWER)
	PACKAGES:=empower-lvap-agent openvswitch luci kmod-ath9k kmod-usb-storage block-mount block-hotplug kmod-fs-ext4 kmod-fs-vfat kmod-nls-cp437 kmod-nls-iso8859-1
endef

define Profile/apu_empower/Description
	Package set optimized for the PCEngines APU.
endef

$(eval $(call Profile,apu_empower))

