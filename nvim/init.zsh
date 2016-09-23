# defines setup for nvim
CUR="$(dirname $0)"

# handle nvim not symlinked
if [ ! -d "$HOME/.config" ]; then
  mkdir -p $HOME/.config
fi

if [ ! -e "$HOME/.config/nvim" ]; then
  echo "No nvim, adding a link to $CUR"
  ln -s $CUR $HOME/.config/nvim
fi

# aliases
unalias nvim 2>/dev/null
alias nvim="direnv exec /usr/bin/nvim"
unset EDITOR
export EDITOR=nvim
unalias e 2>/dev/null
alias e=$EDITOR
