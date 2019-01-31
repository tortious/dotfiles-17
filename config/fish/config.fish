set fish_greeting

set --export EDITOR nvim
set --export VISUAL nvim

# general exports & pathing
set -x GOPATH $HOME
set -U fish_user_paths $GOPATH/bin
set -U FZF_COMPLETE                 2
set -U FZF_TMUX                     1
set -gx FZF_CTRL_T_COMMAND          $FZF_DEFAULT_COMMAND
set -gx FZF_DEFAULT_COMMAND         'rg --files --no-ignore-vcs --hidden'
set -gx FZF_DEFAULT_OPTS            '--height=50% --min-height=15 --reverse'
set -gx HOMEBREW_FORCE_VENDOR_RUBY  1

bind \cq beginning-of-line

# set hub or git as appropriate
if command -sq hub
  set -x GIT_CMD hub
else
  set -x GIT_CMD git
end

if not set -q __initialized
  set -U __initialized

  # ensure fisher setup and fishfile applied
  if not functions -q fisher
      set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
      curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
      fish -c fisher
  end

  # ensure gitconfig.local
  if not test -e $HOME/.gitconfig.local
    printf "No gitconfig.local found. Let's build you one.\n"
    printf "Name: "
    read name
    printf "Email: "
    read email
    echo >$HOME/.gitconfig.local "\
[user]
  name = $name
  email = $email"
    printf "~/.gitconfig.local written.\n"
  end

  # source abbrs
  # set aliases $HOME/.config/fish/functions/*aliases.fish
  # if count $aliases >/dev/null
  #   source $HOME/.config/fish/functions/*aliases.fish
  # end

  # one-off abbrs
  abbr e "$EDITOR"
  abbr l 'ls -alh'
  abbr md 'mkdir -p'
  abbr irb "irb -r 'irb/completion'"
  abbr daa "direnv allow"

  # aws
  abbr avl 'aws-vault login'

  # docker
  abbr dc 'docker-compose'
  abbr dcu 'docker-compose up'
  abbr dsp 'docker system prune'

  # git
  abbr g $GIT_CMD
  abbr ga "$GIT_CMD add"
  abbr gaa "$GIT_CMD add --all ."
  abbr gba "$GIT_CMD branch -a"
  abbr gbd! "$GIT_CMD branch -D"
  abbr gca! "$GIT_CMD commit -v -a --amend"
  abbr gci "$GIT_CMD commit -v"
  abbr gcl "$GIT_CMD clone"
  abbr gcm "$GIT_CMD commit -m"
  abbr gco "$GIT_CMD checkout"
  abbr gcob "$GIT_CMD checkout -b"
  abbr gcot "$GIT_CMD checkout -t"
  abbr gd "$GIT_CMD diff -M"
  abbr gddv "$GIT_CMD diff develop"
  abbr gdl "$GIT_CMD describe --tags --always --dirty"
  abbr gdm "$GIT_CMD diff master"
  abbr gf "$GIT_CMD fetch"
  abbr gl "$GIT_CMD pull"
  abbr glg "$GIT_CMD log --stat"
  abbr glgs "$GIT_CMD log --graph --pretty=tformat:'%Cred%h%Creset}%Cgreen(%cr)}%C(bold blue)<%an>%Creset}%C(yellow)%d%Creset %s' --abbrev-commit --date=relative | column -s '}' -t | less -FXRS"
  abbr glgg "$GIT_CMD log --graph --decorate --all --oneline"
  abbr glr "$GIT_CMD pull --rebase"
  abbr gm! "$GIT_CMD merge"
  abbr gp "$GIT_CMD push"
  abbr gp! "$GIT_CMD push"
  abbr gpt "$GIT_CMD push --tags"
  abbr grb "$GIT_CMD rebase"
  abbr grbi "$GIT_CMD rebase -i"
  abbr grbm "$GIT_CMD rebase -i master"
  abbr grhh "$GIT_CMD reset HEAD --hard"
  abbr gs "$GIT_CMD status -sb"
  abbr gst "$GIT_CMD status"
  abbr gwip "$GIT_CMD add --all; git commit -am 'WIP'"

  # terraform
  abbr tf 'terraform'
  abbr tfa 'terraform apply'
  abbr tfp 'terraform plan'

  # tmux
  abbr tns 'tmux new-session -AD -s'

  # config files
  abbr vv   "pushd ~/.config/nvim; $EDITOR ~/.config/nvim/init.vim; popd"
  abbr tt   "$EDITOR ~/.tmux.conf"
  abbr zz   "pushd ~/.config/fish; $EDITOR ~/.config/fish/config.fish; popd"
  abbr zx   "reload -f"
  abbr zxx  "reload"

  # vim
  abbr v   "$EDITOR"
  abbr vd  "set -x VIM_DEV 1; and $EDITOR; and set -e VIM_DEV"
  abbr v.  "$EDITOR ."
  abbr vd. "set -x VIM_DEV 1; and $EDITOR .; and set -e VIM_DEV"
  abbr vip "$EDITOR +PlugInstall +qall"
  abbr vup "$EDITOR +PlugUpdate"
  abbr vcp "$EDITOR +PlugClean +qall"
end

# ssh agent
setenv SSH_ENV $HOME/.ssh/environment
if functions __ssh_agent_init >/dev/null
  __ssh_agent_init
end

# ensure running in tmux
if status --is-interactive
  and command -s tmux >/dev/null
  and not set -q TMUX
  exec tmux new -A -s (whoami)
end

# setup direnv, asdf, etc
eval (direnv hook fish)
source /usr/local/opt/asdf/asdf.fish
