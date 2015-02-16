let g:ctrlp_switch_buffer = 'E'
let g:ctrlp_tabpage_position = 'c'
let g:ctrlp_working_path_mode = 'rc'
let g:ctrlp_root_markers = ['.project.root']
let g:ctrlp_custom_ignore = '\v%(/\.%(git|hg|svn)|\.%(class|o|png|jpg|jpeg|bmp|tar|jar|tgz|deb|zip)$|/target/)'
let g:ctrlp_open_new_file = 'r'
let g:ctrlp_open_multiple_files = '1ri'
let g:ctrlp_match_window = 'max:40'
let g:ctrlp_prompt_mappings = {
      \ 'PrtSelectMove("j")': ['<c-n>'],
      \ 'PrtSelectMove("k")': ['<c-p>'],
      \ 'PrtHistory(-1)': ['<c-j>', '<down>'],
      \ 'PrtHistory(1)': ['<c-i>', '<up>']
      \ }

let g:ctrlp_working_path_mode = '' " fix root path of CtrlP plugin
map ,fb :CtrlPBuffer<cr>
map ,fr :CtrlP .<cr>
map ,ff :CtrlP<cr>
map ,fm :CtrlPMixed<cr>

