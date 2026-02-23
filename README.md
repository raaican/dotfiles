# DotFiles

## Dependencies

### stow
- `$ pacman -S stow`

### zsh
1. zsh-syntax-highlighting
- `$ pacman -S zsh-syntax-highlighting`
- `$ echo "source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc`
2. zsh-auto-suggestions
- `$ git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions`
- `$ echo "source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc`
### starship
- `$ curl -sS https://starship.rs/install.sh | sh`
### fastfetch 
- `$ pacman -S fastfetch`
### kitty
- `$ pacman -S kitty`
### picom
- `$ pacman -S picom`
### neovim
1. `$ pacman -S nodejs npm lua5.4 luarocks python xclip`
2. `$ git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim`
3. open nvim, go to `~/.config/nvim/lua/packer.lua`. Source the file and simply run `:PackerSync`!
### dwm and dmenu
- `$ pacman -S libxinerama libxft`
### fonts
1. Meslo
2. Sauce Code Pro

## Create Symlinks for the files
- `$ stow .`

# Screenshot

<img width="1600" height="900" alt="image" src="https://github.com/user-attachments/assets/d54702ad-2e13-496b-b6dc-43a1fc610fb9" />















