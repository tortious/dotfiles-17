tm() {
  local session
  newsession=${1:-new}
  session=$(tmux list-sessions -F "#{session_name}" \
    | fzf --query="$1" --select-1 --exit-0) \
    && tmux attach-session -t "$session" || tmux new-session -s $newsession
}
