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
" Treat <li> and <p> tags like the block tags they are
let g:html_indent_tags = 'li\|p'

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %

" (Hopefully) removes the delay when hitting esc in insert mode
" set noesckeys
set ttimeout
set ttimeoutlen=1

" Open new split panes to right and bottom, which feels more natural
set splitbelow splitright

 " Visual shifting (does not exit Visual mode), allows repeats
 vnoremap < <gv
 vnoremap > >gv
 vnoremap . :normal .<CR>

command! W w " Bind :W to :w"
command! Q q " Bind :Q to :q
command! Qall qall
cmap q1 q!
" " Disable Ex mode
map Q <Nop>

" File editing
function! RenameFile()
  let old_name = expand('%')
  let new_name = input('New file name: ', expand('%'), 'file')
  if new_name != '' && new_name != old_name
    exec ':saveas ' . new_name
    exec ':silent !rm ' . old_name
    redraw!
  endif
endfunction
map <Leader>rn :call RenameFile()<cr>

map <Leader>vi :tabe ~/.vimrc<CR>

