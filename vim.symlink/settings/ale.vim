let g:airline#extensions#ale#enabled = 1

nmap <silent> <F2> <Plug>(ale_next_wrap)
nmap <silent> ed :call ale#cursor#ShowCursorDetail()<cr>

let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1
