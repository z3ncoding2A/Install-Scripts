#!/bin/bash

echo
echo "INSTALLING BASE PACKAGE'S"
echo


PKGS=( meson ninja gtk3 gtk4 tk python-wheel mbpfan-git direnv zsh zoxide eza 
	fzf cherrytree libdrm pacman-contrib mtools file-roller 
	ttf-firacode-nerd gnome-disk-utility gparted bleachbit discord mc 
	dialog bash-completion lynis mesa mesa-utils dosfstools usbutils 
	man-pages man-db powertop transmission-gtk fuse3 vlc smartmontools 
	curl wget nano pycharm-community-edition archlinux-appstream-data 
	archlinux-contrib zsync fastfetch rsync speedtest-cli linux-hardened 
	linux-hardened-headers cronie ntp xdg-desktop-portal-hyprland dunst 
	kitty qt5-wayland qt6-wayland rofi
		

### WIFI/NETWORKING && SECURITY PACKAGES ###
        net-tools wireless_tools dkms broadcom-wl-dkms ipscan net-tools 
	wireless_tools traceroute chkrootkit iptables tor torbrowswer-launcher
	
)

for PKG in "${PKGS[@]}" ; do
	echo "INSTALLING; ${PKG}"
	paru -S "$PKG" --noconfirm --failfast
done

echo
echo "#######################################################################"
echo "********System Has Been Optimized With Your Favorite Packages!*******" 
echo "#######################################################################"
echo 


################################################################################################################################################

#PRO TIPS
#       • After first installation, run:
#
#                aura conf --gen > ~/.config/aura/config.toml
#
#         to generate a configuration file that you can customise.
#
#       • Use aura check to keep an eye on some aspects of the health of your system.
#
#       • If  you  build a package and then choose not to install it, the built package file will still be moved to the cache.  You can then install it whenever you want
#         with -C.
#
#       • Research packages using -Ai (--info) and -Ap (--pkgbuild)!
#
#       • When upgrading, use -Akua instead of just -Au.  This will remove makedeps, as well as show PKGBUILD diffs before building. The effects of -k and -a can however
#         be enabled permanently in Aura's config.

