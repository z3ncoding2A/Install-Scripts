#!/usr/bin/env bash

#mkdir ~/.config &

cp .xinitrc .Xresources .zshrc .zhistory .imwheelrc ~/ &

cp city.jpeg DarkCyan.png archlinux-simplyblack.png ARTWORK-nighthawk.jpg ARTWORK-hogsmead.png shadow-of-the-tomb-raider.jpg ~/ &

cp -R awesome qtile ~/.config &

sudo cp lightdm.conf lightdm-gtk-greeter.conf /etc/lightdm/ &

sudo cp vimrc /etc/ &

sudo cp .zshrc .zhistory /root &

gsettings set org.gnome.desktop.interface color-scheme prefer-dark &

sudo systemctl enable bluetooth.service &

sudo systemctl enable lightdm &


sudo ufw default deny &
sudo ufw enable &
sudo systemctl enable ufw &
sudo systemctl start ufw &
sudo ufw status &


sudo grub-mkconfig -o /boot/grub/grub.cfg 








  
   
