# OSX Specific
if [[ "$OSTYPE" == darwin* ]]; then
  alias ls='gls'

  # Network Utils
  alias bouncenet='sudo ifconfig en0 down;sudo ifconfig en0 up'
  alias checkvpn='route get 0/1 && route get 128.0/1'
  alias flushdns='sudo killall -HUP mDNSResponder'
  alias wifi='networksetup -setairportpower en0'
fi

alias -g G2='| grep -C2'
alias -g G='| grep'
alias -g L='| wc -l'
alias -g M='| more'
alias -g ONE="| awk '{ print \$1}'"
alias aptg='sudo apt-get install'
alias c='cd'
alias l='ls -AlhF --group-directories-first --color=auto'
alias ll='ls -al --color=auto'
alias md='mkdir -p'
alias remore='!! | more'
alias retag='ctags -Ra'
alias sz='source ~/.zshrc'
alias tf='tail -1000f'
alias tlf="tail -f"
alias trunc='cat /dev/null >'
alias watch='watch -n 1 '
