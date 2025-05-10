# Define package categories, you should enable multilib /etc/pacman.conf
pacman_packages=(
  nvidia-dkms nvidia-utils nvidia-settings mesa flatpak lib32-mesa vulkan-intel lib32-vulkan-intel primus-vk
)

echo "Installing packages from official repos..."
sudo pacman -S --noconfirm "${pacman_packages[@]}"
