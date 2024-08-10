# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/raican/.zshrc'
fastfetch --config ~/.config/fastfetch/config-1.jsonc
alias ls="ls --color=auto"
alias kittyfetch="fastfetch --config ~/.config/fastfetch/config-2.jsonc"
alias spotif="LD_PRELOAD=/usr/local/lib/spotify-adblock.so spotify-launcher"
alias graphgit="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(auto)%d%C(reset)' --all"
autoload -Uz compinit
compinit
# End of lines added by compinstall
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export EDITOR=nvim
export PATH=/home/raican/.cargo/bin:$PATH
eval "$(zoxide init zsh)"
eval "$(starship init zsh)"
