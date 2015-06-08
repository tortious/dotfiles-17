# PR workflow
function gprco() {
  local repo=""
  local prnum=$1
  if [ "$#" -eq 2 ]; then
    repo=$1
    prnum=$2
  else
   repo=`print -P %2~`
  fi

  echo "hub checkout https://github.com/$repo/pull/$prnum"
}

function gpram() {
  local repo=""
  local prnum=$1
  if [ "$#" -eq 2 ]; then
    repo=$1
    prnum=$2
  else
   repo=`print -P %2~`
  fi

  echo "hub am -3 https://github.com/$repo/pull/$prnum"
}
