# files and folders
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

# jump, like z, with fzf if no direct match
j() {
  [ $# -gt 0 ] && fasd_cd -d "$*" && return
  local directory
  directory="$(fasd -Rdl "$1" | fzf -1 -0 --no-sort +m)" && cd "${directory}" || return 1
}
