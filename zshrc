# vim: fdm=marker sw=2 ts=2 sts=2 tw=80

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

# Zgen {{{{
  source ~/.zgen/zgen.zsh

	if ! zgen saved; then
		echo "Creating a zgen save state"

		zgen oh-my-zsh

		# plugins
		zgen oh-my-zsh plugins/git
		zgen oh-my-zsh plugins/sudo
		zgen oh-my-zsh plugins/node
		zgen oh-my-zsh plugins/npm
		zgen oh-my-zsh plugins/coffee
		zgen load zsh-users/zsh-syntax-highlighting
		zgen load zsh-users/zsh-history-substring-search
		if [[ "$OSTYPE" == darwin* ]]; then
			zgen oh-my-zsh plguins/brew
			zgen oh-my-zsh plguins/brew-cask
			zgen oh-my-zsh plguins/gem
			zgen oh-my-zsh plguins/osx
		elif [[ "$OSTYPE" == cygwin ]]; then
			zgen oh-my-zsh plugins/cygwin
		fi

		# completions
		zgen load zsh-users/zsh-completions src

		# theme
		zgen load ~/dotfiles/zsh kono

		# save it all
		zgen save
	fi
# }}}}
