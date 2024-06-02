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
3. starship
- `$ curl -sS https://starship.rs/install.sh | sh`
4. fastfetch 
- `$ pacman -S fastfetch`
5. kitty
- `$ pacman -S kitty`
6. picom
- `$ pacman -S picom`
7. nvim
- `$ pacman -S nodejs npm lua5.4 luarocks python xclip`
- `$ git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim`
- open nvim, go to `~/.config/nvim/lua/packer.lua`. Source the file and simply run `:PackerSync`!
8. dwm and dmenu
- `$ pacman -S libxinerama libxft`
9. fonts
- Meslo
- Sauce Code Pro

## Create Symlinks for the files
- `$ stow .`

# Screenshot

![doneyes](https://github.com/dREADEDbIRD/dotfiles/assets/92884276/e03977cb-5c98-4d83-a145-3d1dc1c6d88c)














