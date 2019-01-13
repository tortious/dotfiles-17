let NERDTreeShowHidden=1
autocmd vimenter * NERDTree
autocmd vimenter * wincmd p
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

nmap nt :NERDTreeToggle<CR>
