```bash
# install chezmoi
sudo pacman -S chezmoi

# install yay
pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si

# make a copy of .chezmoi.toml in ~/.config/chezmoi/chezmoi.toml and populate the [data] section with relevant info

# init chezmoi
chezmoi init git@github.com:charlie-haley/dotfiles.git

# inspect diff then apply
chezmoi diff
chezmoi apply -v

# install and sync pacman packages using pacmanfile
yay -S pacmanfile
pacmanfile sync
```
