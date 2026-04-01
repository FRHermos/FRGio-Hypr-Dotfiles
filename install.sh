#!/bin/bash

# List of packages
applications=(
  firefox  # Browser
  nvim     # Text editor
  obsidian # Note taking app
  steam
  telegram-desktop
  go
  nodejs
  luarocks
  lazygit
  cargo
  perl
  npm
  ruby
  php
  git-lfs
  python-pip
  lua51
  ast-grep
  android-tools
  ccache
  fzf
  jdk17-openjdk
  julia
  composer
)

default_applications=(
  nautilus # File manager
  onlyoffice-bin
  eog                  # Image viewer
  evince               # Document viewer
  decibels             # Media player
  baobab               # Disk analyzer
  gnome-software       # Browse apps
  blueberry            # Bluetooth control
  nm-connection-editor # WiFi control
  pavucontrol          # Audio control
  kooha                # Video record
  ffmpeg               # Convertor
  htop                 # Process viewer
  pear-desktop
)

additional_packages=(
  xwaylandvideobridge   # Screen sharing
  sof-firmware          # Sound for Intel latest CPUs
  cups                  # Printers
  pipewire              # Sound server
  power-profiles-daemon # Power profiles switcher                # Makes moving in terminal much easier
  python-pywal16
)

packages=(
  hyprland # WM
  ly       # LM
  kitty    # Terminal
  waybar   # Status waybar
  tofi     # App launcher
  waypaper # GUI Wallpaper manager
  swaybg
  swaync                      # Notifications
  wl-clipboard                # Clipboard manager
  hyprlock                    # Lock manager
  hypridle                    # Idle manager
  wlogout                     # Logout menu
  nwg-look                    # GTK Themer
  udiskie                     # Removable media
  hyprsunset                  # Blue light filter
  hyprpicker                  # Color picker
  hyprpolkitagent             # Authentication daemon
  xdg-desktop-portal-hyprland # Screen sharing Hyprland
  xdg-desktop-portal
  hyprshot
  xorg-xhost
)

fonts=(
  ttf-jetbrains-mono # System font
  otf-font-awesome
  noto-fonts-emoji       # Emoji font
  awesome-terminal-fonts # Better align icons
)

themes=(
  bibata-cursor-theme # Cursor theme
  adw-gtk-theme       # GTK3 theme
)

terminal_packages=(
  libtiff5
  fastfetch
)
# Update the systemc
sudo pacman -Sy --noconfirm

# Install packages
for pkg in "${applications[@]}"; do
  echo "Installing $pkg..."
  if ! pacman -Qq "$pkg" &>/dev/null; then
    paru -S --noconfirm --needed "$pkg"
  fi
  echo "$pkg is already installed"
done

for pkg in "${default_applications[@]}"; do
  echo "Installing $pkg..."
  if ! pacman -Qq "$pkg" &>/dev/null; then
    paru -S --noconfirm --needed "$pkg"
  fi
  echo "$pkg is already installed"
done

for pkg in "${additional_packages[@]}"; do
  echo "Installing $pkg..."
  if ! pacman -Qq "$pkg" &>/dev/null; then
    paru -S --noconfirm --needed "$pkg"
  fi
  echo "$pkg is already installed"
done

for pkg in "${packages[@]}"; do
  echo "Installing $pkg..."
  if ! pacman -Qq "$pkg" &>/dev/null; then
    paru -S --noconfirm --needed "$pkg"
  fi
  echo "$pkg is already installed"
done

for pkg in "${fonts[@]}"; do
  echo "Installing $pkg..."
  if ! pacman -Qq "$pkg" &>/dev/null; then
    paru -S --noconfirm --needed "$pkg"
  fi
  echo "$pkg is already installed"
done

for pkg in "${themes[@]}"; do
  echo "Installing $pkg..."
  if ! pacman -Qq "$pkg" &>/dev/null; then
    paru -S --noconfirm --needed "$pkg"
  fi
  echo "$pkg is already installed"
done

for pkg in "${terminal_packages[@]}"; do
  echo "Installing $pkg..."
  if ! pacman -Qq "$pkg" &>/dev/null; then
    paru -S --noconfirm --needed "$pkg"
  fi
  echo "$pkg is already installed"
done

echo "All packages installed."
