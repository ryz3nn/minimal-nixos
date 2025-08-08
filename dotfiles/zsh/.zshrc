# ======================
# Minimal Zsh with Colors
# ======================

# History settings
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt hist_ignore_dups
setopt share_history

# Options
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'


# Path
export PATH="$HOME/bin:/usr/local/bin:$PATH"
export EDITOR='vim'  # or vim/nvim/code

# Color codes
autoload -U colors && colors

# Set the prompt
PS1="%{$fg[cyan]%}%n@%m %{$fg[green]%}%~ %{$fg[green]%}❯ %{$reset_color%}"

# Plugin
source ~/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# fzf
if [ -n "${commands[fzf-share]}" ]; then
  source "$(fzf-share)/key-bindings.zsh"
  source "$(fzf-share)/completion.zsh"
fi

# Aliases command
alias reload='source ~/.zshrc'
alias ll='ls -lah --color=auto'
alias ls='ls --color=auto'
alias ..='cd ..'
alias ...='cd ../..'
alias grep='grep --color=auto'
alias toggle_ibus='$HOME/dotfiles/scripts/toggle_ibus.sh'
alias autoupdate="$HOME/dotfiles/scripts/install.sh"
alias modupdate="vim $HOME/dotfiles/scripts/install.sh"

# NixOS aliases
alias vm='sudo nixos-rebuild switch --flake /home/derek/minimal-nixos#vm'
alias delgen='sudo nix-env --delete-generations old && sudo nix-collect-garbage -d'

