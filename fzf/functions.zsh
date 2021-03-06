# files and folders

  # this part is unnecessary with tab mapped to fzf complete. may undo that in the future
  # local dir=$(ghq list | fzf --select-1 --exit-0)
  # if [ -n "$dir" ]; then
  #   cd "$(ghq root)/${dir}"
  # fi

gcd() { cd "$(ghq root)/$1" }

_fzf_complete_gcd() {
  _fzf_complete "" "$@" < <(ghq list)
}
_fzf_complete_gl() {
  _fzf_complete "" "$@" < <(ghq list)
}

fdb() {
  local declare dirs=()
  get_parent_dirs() {
    if [[ -d "${1}" ]]; then
      dirs+=("$1")
    else
      return
    fi
    if [[ "${1}" == '/' ]]; then
      for _dir in "${dirs[@]}"; do
        echo $_dir
      done
    else
      get_parent_dirs $(dirname "$1")
    fi
  }
  local DIR=$(get_parent_dirs $(realpath "${1:-$PWD}") | fzf-tmux --tac)
  cd "$DIR"
}

# jump, like z, with fzf if no direct match
j() {
  [ $# -gt 0 ] && fasd_cd -d "$*" && return
  local dir
  dir=$(fasd -Rdl \
    | sed "s:$HOME:~:" \
    | fzf --no-sort +m -q "$*" \
    | sed "s:~:$HOME:") \
    && pushd "$dir"
}

fd() {
  local dir
  dir=$(find ${1:-*} -path '*/\.*' \
    -prune -o -type d \
    -print 2>/dev/null | fzf +m)
  [ -d "$dir" ] && pushd "$dir"
}

ff() {
  local file
  local dir
  file=$(fzf +m -q "$1") \
    && dir=$(dirname "$file")
  [ -d "$dir" ] && pushd "$dir"
}

# fe [FUZZY PATTERN] - Open the selected file with the default editor
#   - Bypass fuzzy finder if there's only one match (--select-1)
#   - Exit if there's no match (--exit-0)
fe() {
  local files
  IFS=$'\n' files=($(fzf-tmux --query="$1" --multi --select-1 --exit-0))
  [[ -n "$files" ]] && ${EDITOR:-vim} "${files[@]}"
}

# fasd & fzf change directory - open best matched file using `fasd` if given argument, filter output of `fasd` using `fzf` else
v() {
  [ $# -gt 0 ] && fasd -f -e ${EDITOR} "$*" && return
  local file
  file="$(fasd -Rfl "$1" | fzf -1 -0 --no-sort +m)" && vi "${file}" || return 1
}
vg() {
  local file

  file="$(ag --nobreak --noheading $@ | fzf -0 -1 | awk -F: '{print $1 " +" $2}')"

  if [[ -n $file ]]; then
    vim $file
  fi
}

unalias z 2>/dev/null
z() {
  local dir
  dir="$(fasd -Rdl "$1" | fzf -1 -0 --no-sort +m)" && cd "${dir}" || return 1
}

### git
fzf_log() {  
  hash=$(pretty_git_log |  fzf | awk '{print $1}')
  echo $hash | pbcopy
  git showtool $hash
}

### tmux
tm() {
  local session
  newsession=${1:-new}
  session=$(tmux list-sessions -F "#{session_name}" | \
    fzf --query="$1" --select-1 --exit-0) &&
    tmux attach-session -t "$session" || tmux new-session -s $newsession
}
