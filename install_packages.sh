#!/bin/bash

curl -s 'https://liquorix.net/install-liquorix.sh' | sudo bash

echo "Updating system..."
sudo pacman -Syu --noconfirm

echo "Installing essential base-devel and git..."
sudo pacman -S --needed git base-devel --noconfirm

# Install yay AUR helper
if ! command -v yay &>/dev/null; then
  echo "Installing yay..."
  git clone https://aur.archlinux.org/yay.git
  cd yay
  makepkg -si --noconfirm
  cd ..
  rm -rf yay
fi

# Define package categories
pacman_packages=(
  firefox neovim discord telegram-desktop obsidian sof-firmware cups pipewire 
  hyprland ly kitty waybar swaync hyprpaper
  xdg-desktop-portal-hyprland wl-clipboard hyprlock udiskie 
  nwg-look nautilus blueberry
  pavucontrol nm-connection-editor htop power-profiles-daemon
  adw-gtk-theme ttf-jetbrains-mono awesome-terminal-fonts
)

aur_packages=(
  github-desktop-bin betterdiscord-installer
  rofi-lbonn-wayland-git rofi-calc rofi-emoji
  xwaylandvideobridge waypaper hyrpsunset wlogout python-pywal16 bibata-cursot-theme
)

echo "Installing packages from official repos..."
sudo pacman -S --noconfirm "${pacman_packages[@]}"

echo "Installing AUR packages with yay..."
yay -S --noconfirm "${aur_packages[@]}"

# Add zoxide init to .bashrc if not already present
#if ! grep -q 'zoxide init bash' ~/.bashrc; then
#  echo 'eval "$(zoxide init bash)"' >>~/.bashrc
#  echo "Added zoxide initialization to .bashrc"
#fi


echo "All done! You may want to reboot or re-log to ensure all services and configurations are applied."

