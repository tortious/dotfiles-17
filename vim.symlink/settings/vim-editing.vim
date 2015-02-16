" Window and navigation management
map <Leader>e :e <C-R>=expand("%:p:h") . '/'<CR>
map <Leader>s :split <C-R>=expand("%:p:h") . '/'<CR>
map <Leader>v :vnew <C-R>=expand("%:p:h") . '/'<CR>
imap <C-s> <esc>:w<CR>
map <C-s> <esc>:w<CR>
map <C-t> <esc>:tabnew<CR>
map <C-x> <C-w>c
map <Leader>w <C-w>w
nnoremap <leader><leader> <c-^>

" Merge a tab into a split in the previous window
function! MergeTabs()
  if tabpagenr() == 1
    return
  endif
  let bufferName = bufname("%")
  if tabpagenr("$") == tabpagenr()
    close!
  else
    close!
    tabprev
  endif
  split
  execute "buffer " . bufferName
endfunction
nmap <C-W>u :call MergeTabs()<CR>

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Underlining
 nmap <silent> ,u= :t.\|s/./=/g\|:nohls<cr>
 nmap <silent> ,u- :t.\|s/./-/g\|:nohls<cr>
 nmap <silent> ,u~ :t.\|s/./\\~/g\|:nohls<cr>

" Fixes

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %

" (Hopefully) removes the delay when hitting esc in insert mode
" set noesckeys
set ttimeout
set ttimeoutlen=1
