call plug#begin('~/.vim/plugged')

Plug 'ctrlpvim/ctrlp.vim'
Plug 'xolox/vim-misc'

" UI
Plug 'chriskempson/base16-vim'
Plug 'flazz/vim-colorschemes'
Plug 'dandorman/vim-colors'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Search
Plug 'rking/ag.vim'
Plug 'vim-scripts/ctags.vim'

" Editing
Plug 'AndrewRadev/splitjoin.vim'
Plug 'Raimondi/delimitMate'
Plug 'godlygeek/tabular'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'z0mbix/vim-shfmt' ", { 'for': 'sh' }

" Vim Improvements
" Plug 'ajh17/VimCompletesMe'
Plug 'christoomey/vim-tmux-navigator'
Plug 'honza/vim-snippets'
Plug 'ludovicchabant/vim-gutentags'
Plug 'mtth/scratch.vim'
Plug 'shougo/neocomplete.vim'
Plug 'shougo/neosnippet.vim'
Plug 'shougo/neosnippet-snippets'
Plug 'shougo/vimproc.vim'
Plug 'tpope/vim-dispatch'
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
Plug 't9md/vim-ruby-xmpfilter'
Plug 'thoughtbot/vim-rspec'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-rails'
Plug 'vim-ruby/vim-ruby'

" Typescript
Plug 'clausreinke/typescript-tools.vim'
Plug 'leafgarland/typescript-vim'
Plug 'quramy/tsuquyomi'

" DBs
" Plug 'trevorgrayson/vim-oink'
Plug 'vim-scripts/dbext.vim'

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

