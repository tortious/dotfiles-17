set nocompatible

" =============== General ===============
let mapleader=","
set autoread
set autowrite
set autowriteall
set backspace=indent,eol,start
set noerrorbells visualbell
set showcmd showmatch showmode
set viminfo+=!
set mouse=a mousehide
set tags=tags;/
set clipboard=unnamedplus

" =============== vim-plug Initialization ===============
if filereadable(expand("~/.config/nvim/plugs.vim"))
  source ~/.config/nvim/plugs.vim
endif

" =============== UI ===============
" set t_Co=256 " Force 256 colors
" in case t_Co alone doesn't work, add this as well:
" i.e. Force 256 colors harder
let &t_AB="\e[48;5;%dm"
let &t_AF="\e[38;5;%dm"
" set term=screen-256color
" let $TERM='screen-256color'
" if (has("termguicolors"))
"   set termguicolors
" endif

let g:netrw_liststyle=3
let g:netrw_bufsettings = "noma nomod nu nobl nowrap ro rnu"
set colorcolumn=81
set cursorline
set diffopt+=vertical
set guicursor=a:blinkon0
set guioptions-=T
set hlsearch
set lazyredraw
set list listchars=tab:»·,trail:· " display that extra whitespace
set relativenumber
set numberwidth=5
set ruler
set scrolloff=6
set t_ut= " improve screen clearing by using the background color
set t_ti=t_te= " prevent vim from killing scrollback buffer
set textwidth=100
map <Leader>n :nohl<cr>

" status line setup with git info
set stl=%f\ %m\ %r%{fugitive#statusline()}\ Line:%l/%L\ Col:%v\ [%Y]

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
  syntax on
endif

" =============== Indentation ===============
set autoindent
set smartindent
set expandtab
set shiftround
set shiftwidth=2
set tabstop=2
set sts=2
filetype plugin indent on

" =============== Searching ===============
set ignorecase smartcase
set incsearch
let g:fuzzy_ignore = "*.png;*.PNG;*.JPG;*.jpg;*.GIF;*.gif;vendor/**;coverage/**;tmp/**;rdoc/**"


" let g:python_host_prog = '/itz/.pyenv/versions/neovim2/bin/python'
" let g:python3_host_prog = '/Users/bkonowitz/.pyenv/versions/neovim3/bin/python'

so ~/.config/nvim/settings.vim

