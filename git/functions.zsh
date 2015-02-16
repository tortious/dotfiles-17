# No arguments: `git status`
# With arguments: acts like `git`

unalias g 2>/dev/null # yes I know this is a dirty play
function g() {
  cmd=`which hub`
  if [[ ! -a $cmd ]] ; then
    cmd=`which git`
  fi
  if [[ $# > 0 ]]; then
    $cmd $@
  else
    $cmd status
  fi
}

# Complete g like git
compdef g=git

function gbsu() {
  branch=$(git symbolic-ref --short -q HEAD)
  if [[ $# > 0 ]]
  then
    target=$1
  else
    target=$branch
  fi

  git branch --set-upstream-to=origin/$target $branch
}

pretty_git_log() {
  git log --graph --pretty="tformat:${FORMAT}" $* |
  # Replace (2 years ago) with (2 years)
  sed -Ee 's/(^[^<]*) ago\)/\1)/' |
  # Replace (2 years, 5 months) with (2 years)
  sed -Ee 's/(^[^<]*), [[:digit:]]+ .*months?\)/\1)/' |
  # Line columns up based on } delimiter
  column -s '}' -t |
  # Color merge commits specially
  sed -Ee "s/(Merge branch .* into .*$)/$(printf $ANSI_RED)\1$(printf $ANSI_RESET)/" |
  # Page only if we need to
  less -FXRS
}

