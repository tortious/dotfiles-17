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
  abbr ga "git add"
  abbr gaa "git add --all ."
  abbr gba "git branch -a"
  abbr gbd! "git branch -D"
  abbr gca! "git commit -v -a --amend"
  abbr gci "git commit -v"
  abbr gcl "$GIT_CMD clone"
  abbr gcm "git commit -m"
  abbr gco "git checkout"
  abbr gcob "git checkout -b"
  abbr gcot "git checkout -t"
  abbr gd "git diff -M"
  abbr gddv "git diff develop"
  abbr gdl "git describe --tags --always --dirty"
  abbr gdm "git diff master"
  abbr gf "git fetch"
  abbr gl "git pull"
  abbr glg "git log --stat"
  abbr glgs "git log --graph --pretty=tformat:'%Cred%h%Creset}%Cgreen(%cr)}%C(bold blue)<%an>%Creset}%C(yellow)%d%Creset %s' --abbrev-commit --date=relative | column -s '}' -t | less -FXRS"
  abbr glgg "git log --graph --decorate --all --oneline"
  abbr glr "git pull --rebase"
  abbr gm! "git merge"
  abbr gp "git push"
  abbr gp! "git push"
  abbr gpt "git push --tags"
  abbr grb "git rebase"
  abbr grbi "git rebase -i"
  abbr grbm "git rebase -i master"
  abbr grhh "git reset HEAD --hard"
  abbr gs "git status -sb"
  abbr gst "git status"
  abbr gwip "git add --all; git commit -am 'WIP'"

  # terraform
  abbr tf 'terraform'
  abbr tfa 'terraform apply'
  abbr tfp 'terraform plan'

  # tmux
  abbr tns 'tmux new-session -ADd -s'

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
