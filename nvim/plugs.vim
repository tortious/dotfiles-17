call plug#begin('~/.local/share/nvim/plugged')
" Plug 'rking/ag.vim'
" Plug 'fishbullet/deoplete-ruby'
" Plug 'shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'zchee/deoplete-go', { 'do': 'make'}
Plug 'AndrewRadev/splitjoin.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'arcticicestudio/nord-vim'
Plug 'autozimu/LanguageClient-neovim'
Plug 'dag/vim-fish'
Plug 'fatih/vim-go', { 'tag': '*', 'do': ':GoUpdateBinaries' }
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-easy-align'
Plug 'mhartington/oceanic-next'
Plug 'ncm2/ncm2'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-go'
Plug 'ncm2/ncm2-path'
Plug 'ncm2/ncm2-abbrfuzzy'
Plug 'ncm2/ncm2-jedi'
Plug 'ncm2/ncm2-match-highlight'
Plug 'pearofducks/ansible-vim'
Plug 'roxma/nvim-yarp'
Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdtree'
Plug 'shougo/neosnippet-snippets'
Plug 'shougo/neosnippet.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-ruby/vim-ruby'
Plug 'vim-scripts/matchit.zip'
Plug 'w0rp/ale'
Plug 'z0mbix/vim-shfmt', { 'for': ['sh', 'zsh'] }
" let g:deoplete#enable_at_startup = 1

if filereadable(expand("~/.config/nvim/nvimrc.plugs.local"))
  source ~/.config/nvim/nvimrc.plugs.local
endif

" Add plugins to &runtimepath
call plug#end()
