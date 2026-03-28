HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
export EDITOR=nvim
export PATH="$HOME/.local/bin:$PATH"
export PATH=/home/raican/.cargo/bin:$PATH
export PATH="$HOME/.local/share/gem/ruby/3.3.0/bin:$PATH"
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
source /home/raican/.zsh/zsh-autocomplete/zsh-autocomplete.plugin.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-vi-mode/zsh-vi-mode.plugin.zsh
[ -s "/home/raican/.bun/_bun" ] && source "/home/raican/.bun/_bun"
zstyle :compinstall filename '/home/raican/.zshrc'
alias ls="ls -lah --color=auto"
alias clip="rofi -modi \"clipboard:greenclip print\" -show clipboard -run-command '{cmd}'"
alias kittyfetch="fastfetch --config ~/.config/fastfetch/config-2.jsonc"
alias graphgit="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(auto)%d%C(reset)' --all"
alias calendar="khal calendar"
autoload -Uz compinit
compinit
eval "$(zoxide init zsh)"
eval "$(starship init zsh)"
fastfetch --config ~/.config/fastfetch/config-1.jsonc
