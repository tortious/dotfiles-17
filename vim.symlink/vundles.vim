" ============ Vundle configuration ============
filetype off
set rtp+=~/.vim/bundle/vundle.vim
set rtp+=~/.vim/vundles/ " Submodules
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

" Todo - pull all these out to separate .vundles
" Project
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'xolox/vim-misc'

" UI
Plugin 'chriskempson/base16-vim'
Plugin 'flazz/vim-colorschemes'

" Search
Plugin 'rking/ag.vim'
Plugin 'vim-scripts/ctags.vim'

" Vim Improvements
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'ervandew/supertab'
Plugin 'godlygeek/tabular'
Plugin 'mtth/scratch.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'vim-scripts/matchit.zip'
Plugin 'vim-scripts/tComment'
Plugin 'Shougo/neocomplete'
Plugin 'Shougo/neosnippet'
Plugin 'Shougo/neosnippet-snippets'
Plugin 'honza/vim-snippets'

" Languages
Plugin 'derekwyatt/vim-scala'
Plugin 'elixir-lang/vim-elixir'
Plugin 'kchmck/vim-coffee-script'
Plugin 'plasticboy/vim-markdown'

" Ruby
Plugin 't9md/vim-ruby-xmpfilter'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-rails'
Plugin 'vim-ruby/vim-ruby'

" Postgres
Plugin 'trevorgrayson/vim-oink'

if filereadable(expand("~/.vimrc.bundles.local"))
  source ~/.vimrc.bundles.local
endif

call vundle#end()

filetype plugin indent on
filetype on
