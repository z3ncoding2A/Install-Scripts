#!/usr/bin/env bash
#-------------------------------------------------------------------------
#      _          _    __  __      _   _    
#     /_\  _ _ __| |_ |  \/  |__ _| |_(_)__ 
#    / _ \| '_/ _| ' \| |\/| / _` |  _| / _|
#   /_/ \_\_| \__|_||_|_|  |_\__,_|\__|_\__| 
#  Arch Linux Post Install Setup and Config
#-------------------------------------------------------------------------

echo
echo "INSTALLING NETWORK COMPONENTS"
echo

PKGS=(
        'wpa_supplicant'            # Key negotiation for WPA wireless networks
        'dialog'                    # Enables shell scripts to trigger dialog boxex
        'networkmanager'            # Network connection manager
        'openvpn'                   # Open VPN support
        'networkmanager-openvpn'    # Open VPN plugin for NM
        'networkmanager-vpnc'       # Open VPN plugin for NM. Probably not needed if networkmanager-openvpn is installed.
        'network-manager-applet'    # System tray icon/utility for network connectivity
        'dhclient'                  # DHCP client
        'libsecret'                 # Library for storing passwords
	'linus-lts-headers' 
	'linux-headers'
	'dkms'
	'broadcom-wl-dkms'
	'net-tools'
	'wireless_tools'
	'macchanger'
	'aircrack-ng'	
	'netsniff-ng'
	'airgeddon'	
	'mdk3'
	'mdk4'	
	'ipscan'
	'fern-wifi-cracker'
	'tor'
	'john'
	'hcxtools'
	'hcxdumptools'
	'wireshark-gtk'
	'wifite'
	'crunch'
	'inetutils'
	'iptables'
	'traceroute'
	'iproute2'
)	

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done

echo
echo "Done!"
echo
