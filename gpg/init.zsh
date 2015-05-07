# Defines ruby aliases, functions, and variable exports for a clean ruby env

if [ -f "${HOME}/.gpg-agent-info" ]; then
  . "${HOME}/.gpg-agent-info"
  export GPG_AGENT_INFO
  export SSH_AUTH_SOCK
fi

export GPG_TTY=$(tty)

CUR="$(dirname $0)"
source "$CUR/functions.zsh"
source "$CUR/aliases.zsh"
