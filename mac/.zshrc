export CLICOLOR=1
export LC_ALL=en_US.UTF-8
export VIRTUAL_ENV_DISABLE_PROMPT=1

autoload -Uz promptinit
promptinit
setopt histignorealldups sharehistory PROMPT_SUBST
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )

zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' unstagedstr '%F{red}🅤%f '
zstyle ':vcs_info:*' stagedstr '%F{green}🅢%f '
zstyle ':vcs_info:*' formats '%F{yellow}( <%f%F{green}%r%f%F{yellow}>%f %b %u%c%F{yellow})%f'

function virtualenv_info () {
    [ $VIRTUAL_ENV ] && echo '('`basename $VIRTUAL_ENV`') '
}

PROMPT=$'\n'
PROMPT+='%{%F{yellow}%}< %{%F{blue}%}%~%{%F{white}%} :'
PROMPT+='   ${vcs_info_msg_0_}'
PROMPT+=$'\n'
PROMPT+='%{%F{green}%}$(virtualenv_info)'
PROMPT+='%{%F{cyan}%}%n%{%F{135}%}@%{%F{cyan}%}%m%{%F{yellow}%} > %{%F{white}%}'



# Aliases from native linux-mint .bashrc
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
    alias ll='ls -alF'
    alias la='ls -A'
    alias l='ls -CF'
    alias mg='mongo --quiet'

# Bindings for "word movement" with <Ctrl + [Left, Right]>
    bindkey '^[[1;5C' emacs-forward-word
    bindkey '^[[1;5D' emacs-backward-word

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

export PATH=/Users/sebastianrodriguezcapurro/Library/Python/3.9/bin:$PATH
export PATH=/opt/homebrew/bin:$PATH
export PATH=/Users/sebastianrodriguezcapurro/./Library/Python/3.9/lib/python/site-packages:$PATH
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
