HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
export EDITOR=nvim
export PATH=/home/raican/.cargo/bin:$PATH
export PATH="$HOME/.local/share/gem/ruby/3.3.0/bin:$PATH"
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
source /home/raican/.zsh/zsh-autocomplete/zsh-autocomplete.plugin.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
[ -s "/home/raican/.bun/_bun" ] && source "/home/raican/.bun/_bun"
bindkey -v
bindkey '^R' .history-incremental-search-backward
bindkey '^S' .history-incremental-search-forward
zstyle :compinstall filename '/home/raican/.zshrc'
alias ls="ls -lah --color=auto"
alias kittyfetch="fastfetch --config ~/.config/fastfetch/config-2.jsonc"
alias graphgit="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(auto)%d%C(reset)' --all"
alias calendar="khal calendar"
autoload -Uz compinit
compinit
eval "$(zoxide init zsh)"
eval "$(starship init zsh)"
fastfetch --config ~/.config/fastfetch/config-1.jsonc
