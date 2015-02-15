# Global Fixes {{{{
  # For sudo-ing aliases
  # https://wiki.archlinux.org/index.php/Sudo#Passing_aliases
  alias sudo='sudo '
  
  # Ensure languages are set
  export LANG=en_US.UTF-8
  export LANGUAGE=en_US.UTF-8
  export LC_ALL=en_US.UTF-8
  
  # Ensure editor is set
  export EDITOR=vim
# }}}}

# OS Detection {{{{
  UNAME=`uname`
  # Fallback info
  CURRENT_OS='Linux'
  DISTRO=''
  if [[ $UNAME == 'Darwin' ]]; then
    CURRENT_OS='OS X'
  else
    # Must be Linux, determine distro
    if [[ -f /etc/redhat-release ]]; then
      # CentOS or Redhat?
      if grep -q "CentOS" /etc/redhat-release; then
      DISTRO='CentOS'
      else
      DISTRO='RHEL'
      fi
    fi
  fi
# }}}}

# Antigen {{{{
  source ~/.antigen/antigen.zsh
  
  antigen use oh-my-zsh
  antigen theme ~/dotfiles/zsh kono

  antigen bundle git
  antigen bundle zsh-users/zsh-syntax-highlighting
  antigen bundle zsh-users/zsh-history-substring-search
  antigen bundle node
  antigen bundle npm
  antigen bundle coffee
  if [[ $CURRENT_OS == 'OS X' ]]; then
    antigen bundle brew
    antigen bundle brew-cask
    antigen bundle gem
    antigen bundle osx
  elif [[ $CURRENT_OS == 'Cygwin' ]]; then
    antigen bundle cygwin
  fi

  antigen apply
# }}}}

