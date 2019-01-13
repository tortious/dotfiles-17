CUR="$(dirname $0)"
source "$CUR/functions.zsh"
source "$CUR/aliases.zsh"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export FZF_DEFAULT_OPTS='--height 40% --reverse --border --select-1'
export FZF_DEFAULT_COMMAND='rg -uu --files --follow -g "!{.git,node_modules,/Users/bkonowitz/cocoapods}/*" 2> /dev/null'
# export FZF_COMPLETION_TRIGGER=''
bindkey '^T' fzf-completion
bindkey '^I' $fzf_default_completion
