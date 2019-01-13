# Kono style tmux conf

function tn() {
  tmux new -s `basename $PWD`
}

 # tmux
alias ta='tmux attach -t'
alias tls='tmux ls'
alias tns='tmux new -s'
alias tks='tmux kill-session -t'
alias tat='tmux new-session -As "$(basename "$PWD" | tr . -)"'
alias ntmate="TMUX='' tmate"
