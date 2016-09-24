call plug#begin('~/.config/nvim/plugged')

" UI
Plug 'chriskempson/base16-vim'
Plug 'flazz/vim-colorschemes'
Plug 'dandorman/vim-colors'
Plug 'mhartington/oceanic-next'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Search
Plug 'rking/ag.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'c0r73x/neotags.nvim'

" Editing
Plug 'AndrewRadev/splitjoin.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'

" Vim Improvements
Plug 'christoomey/vim-tmux-navigator'
Plug 'neomake/neomake'
" Plug 'shougo/neocomplete.vim'
" Plug 'shougo/neosnippet.vim'
" Plug 'shougo/neosnippet-snippets'
" Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'vim-scripts/matchit.zip'

" Languages
Plug 'derekwyatt/vim-scala'
Plug 'elixir-lang/vim-elixir'
Plug 'kchmck/vim-coffee-script'
Plug 'plasticboy/vim-markdown'

" Ruby
Plug 'tpope/vim-rails'
Plug 'vim-ruby/vim-ruby'

if filereadable(expand("~/.config/nvim/nvimrc.plugs.local"))
  source ~/.config/nvim/nvimrc.plugs.local
endif

" Add plugins to &runtimepath
call plug#end()
