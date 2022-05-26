# Setting PATH for Python 3.8
PATH="/Library/Frameworks/Python.framework/Versions/3.8/bin:${PATH}"
export PATH
export CLICOLOR=1
export LC_ALL=en_US.UTF-8
export VIRTUAL_ENV_DISABLE_PROMPT=1

function virtualenv_info {
    [ $VIRTUAL_ENV ] && echo '('`basename $VIRTUAL_ENV`') '
}

PROMPT=$'\n'
PROMPT+='%{%F{yellow}%}< %{%F{cyan}%}%~%{%F{white}%} :'
PROMPT+=$'\n'
PROMPT+='%{%F{green}%}$(virtualenv_info)'
PROMPT+='%{%F{blue}%}%n%{%F{135}%}@%{%F{blue}%}%m%{%F{yellow}%} > %{%F{white}%}'

unset HISTFILE

# Bindings for "word movement" with <Ctrl + [Left, Right]>
    bindkey '^[[1;5C' emacs-forward-word
    bindkey '^[[1;5D' emacs-backward-word
