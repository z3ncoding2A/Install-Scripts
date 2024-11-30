#!/usr/bin/env bash
#-------------------------------------------------------------------------
#      _          _    __  __      _   _    
#     /_\  _ _ __| |_ |  \/  |__ _| |_(_)__ 
#    / _ \| '_/ _| ' \| |\/| / _` |  _| / _|
#   /_/ \_\_| \__|_||_|_|  |_\__,_|\__|_\__| 
#  Arch Linux Post Install Setup and Config
#-------------------------------------------------------------------------

echo
echo "INSTALLING XORG"
echo

PKGS=(
	qt5-wayland 
	qt5ct
	qt6-wayland 
	qt6ct 
	qt5-svg 
	qt5-quickcontrols2 
	qt5-graphicaleffects 
	gtk3 
	polkit-gnome 
	wl-clipboard 
	cliphist 
	python-requests 
	pacman-contrib 
	kitty 
	mako 
	waybar 
	swww 
	swaylock-effects 
	wofi 
	wlogout 
	xdg-desktop-portal-hyprland 
	swappy 
	grim 
	slurp 
	thunar
	thunar-archive-plugin 
	thunar-media-tags-plugin
        chromium 
	zen-browser-bin 
	cherrytree 
	thunderbird 
	mpv 
	brightnessctl 
	gvfs 
	ufw 
	starship 
	ttf-firacode-nerd 
	otf-font-awesome 
	file-roller 
	network-manager-applet 
	lxappearance 
	ttf-jetbrains-mono-nerd 
	noto-fonts-emoji 
	papirus-icon-theme
	hyprcursor 
	hyprutils 
	aquamarine 
	hypridle 
	hyprlock 
	hyprland 
	pyprland
	curl 
	gvfs 
	inxi 
	jq 
	tabby 
	pipewire-alsa 
	pipewire-pulse 
	python-requests 
	python-wheel 
	python-pyquery 
	rofi-wayland 
	swappy 
	swaync 
	wallust 
	waybar 
	wget 
	xdg-utils 
	yad 
	mousepad 
	nwg-look 
	yt-dlp 
	code 
	tk 
	xz 
	unzip 
	p7zip 
	unrar 
	tar 
	libdrm 
	ninja 
	meson 
	virtualbox-guest-iso 
	virtualbox-guest-utils 
	zsync 
	rsync 
	vlc 
	smartmontools 
	transmission-gtk 
	bleachbit 
	egrep	 
	chkrootkit 
	rkhunter 
	fuse2 
	fuse3 
	man-pages 
	man-db 
	lynis 
	usbutils 
	dosfstools 
	mtools 
	gnome-disk-utility 
	gparted 
	parted 
	discord 
	otf-font-awesome 
	pycharm-community-edition 
	simplescreenrecorder 
	gtk4 
	pacquery 
	
)


for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    paru -S "$PKG" --noconfirm --needed --failfast
done

echo
echo "Done!"
echo
