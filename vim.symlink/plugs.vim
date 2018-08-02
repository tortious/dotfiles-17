call plug#begin('~/.vim/plugged')
Plug 'AndrewRadev/splitjoin.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'arcticicestudio/nord-vim'
Plug 'dag/vim-fish'
Plug 'docunext/closetag.vim'
Plug 'fatih/vim-go', { 'tag': '*', 'do': ':GoUpdateBinaries' }
Plug 'hashivim/vim-terraform'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/vim-easy-align'
Plug 'maralla/completor.vim'
Plug 'mhartington/oceanic-next'
Plug 'pearofducks/ansible-vim'
Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
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
let g:deoplete#enable_at_startup = 1

" Maybes
" Plug 'maralla/completor.vim'
" Plug 'godlygeek/tabular'
" Plug 'Raimondi/delimitMate'

if filereadable(expand("~/.vimrc.plugs.local"))
  source ~/.vimrc.plugs.local
endif

" Add plugins to &runtimepath
call plug#end()


" original examples
" Group dependencies, vim-snippets depends on ultisnips
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
"
" " On-demand loading
" Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
"
" " Using git URL
" Plug 'https://github.com/junegunn/vim-github-dashboard.git'
"
" " Plugin options
" Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
"
" " Plugin outside ~/.vim/plugged with post-update hook
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }

" Unmanaged plugin (manually installed and updated)
" Plug '~/my-prototype-plugin'

