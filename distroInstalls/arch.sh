#!/bin/sh
pacman-key --init
curl -o /tmp/pacman.conf https://raw.githubusercontent.com/S4vianR/dotfiles/refs/heads/main/package-managers/pacman.conf
rm /etc/pacman.conf
mv /tmp/pacman.conf /etc
pacman -Syyy
pacman -S --noconfirm archinstall
echo "archinstall is ready to go, good luck :)"
