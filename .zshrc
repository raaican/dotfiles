# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
export EDITOR=nvim
export PATH=/home/raican/.cargo/bin:$PATH
bindkey -v
# bindkey '^P' up-history
# bindkey '^N' down-history
bindkey '^R' .history-incremental-search-backward
bindkey '^S' .history-incremental-search-forward
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
source /home/raican/zsh-autocomplete/zsh-autocomplete.plugin.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
zstyle :compinstall filename '/home/raican/.zshrc'
fastfetch --config ~/.config/fastfetch/config-1.jsonc
alias ls="ls --color=auto"
alias kittyfetch="fastfetch --config ~/.config/fastfetch/config-2.jsonc"
alias graphgit="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(auto)%d%C(reset)' --all"
autoload -Uz compinit
compinit
# End of lines added by compinstall
eval "$(zoxide init zsh)"
eval "$(starship init zsh)"
