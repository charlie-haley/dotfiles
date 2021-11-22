```bash
# install chezmoi
sudo pacman -S chezmoi

# make a copy of .chezmoi.toml in ~/.config/chezmoi/chezmoi.toml and populate the [data] section with relevant info

# init chezmoi
chezmoi init git@github.com:charlie-haley/dotfiles.git

# inspect diff then apply
chezmoi diff
chezmoi apply -v
```
