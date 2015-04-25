# Defines aliases and functions for speedy git-ness

CUR="$(dirname $0)"
source "$CUR/functions.zsh"
source "$CUR/aliases.zsh"

# handle a .gitconfig not present
if [ ! -e "$HOME/.gitconfig.local" ]; then
  printf "No gitconfig.local found. Let's build you one.\n"
  printf "Name: "
  read name
  printf "Email: "
  read email
  echo "[user]\n\tname = $name\n\temail = $email" >> $HOME/.gitconfig.local
  printf "~/.gitconfig.local written.\n"
fi
