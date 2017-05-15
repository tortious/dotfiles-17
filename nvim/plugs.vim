call plug#begin('~/.local/share/nvim/plugged')

" UI
Plug 'chriskempson/base16-vim'
Plug 'flazz/vim-colorschemes'
Plug 'dandorman/vim-colors'
Plug 'mhartington/oceanic-next'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Search
Plug 'rking/ag.vim'
Plug 'ctrlpvim/ctrlp.vim'
" Plug 'c0r73x/neotags.nvim'
Plug 'fntlnz/atags.vim'
Plug 'scrooloose/nerdtree'

" Editing
Plug 'AndrewRadev/splitjoin.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'

" Vim Improvements
" Plug 'shougo/neosnippet-snippets'
" Plug 'shougo/neosnippet.vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'SirVer/ultisnips'
Plug 'christoomey/vim-tmux-navigator'
Plug 'ervandew/supertab'
Plug 'honza/vim-snippets'
Plug 'neomake/neomake'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'vim-scripts/matchit.zip'

" Languages
Plug 'derekwyatt/vim-scala'
Plug 'kchmck/vim-coffee-script'
Plug 'plasticboy/vim-markdown'

" Go
Plug 'fatih/vim-go'
Plug 'zchee/deoplete-go', { 'do': 'make'}

" Elixir
Plug 'elixir-lang/vim-elixir'
Plug 'slashmili/alchemist.vim'

" Ruby
Plug 'fishbullet/deoplete-ruby'
Plug 'tpope/vim-rails'
Plug 'vim-ruby/vim-ruby'

if filereadable(expand("~/.config/nvim/nvimrc.plugs.local"))
  source ~/.config/nvim/nvimrc.plugs.local
endif

" Add plugins to &runtimepath
call plug#end()
