if executable('ag')
  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --hidden --nocolor -g ""'
  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

let g:ctrlp_switch_buffer = 'E'
let g:ctrlp_tabpage_position = 'c'
let g:ctrlp_working_path_mode = 'rc'
let g:ctrlp_root_markers = ['.project.root', '.git']
let g:ctrlp_open_new_file = 'r'
let g:ctrlp_open_multiple_files = '1ri'
let g:ctrlp_match_window = 'max:40'
let g:ctrlp_prompt_mappings = {
      \ 'PrtSelectMove("j")': ['<c-n>'],
      \ 'PrtSelectMove("k")': ['<c-p>'],
      \ 'PrtHistory(-1)': ['<c-j>', '<down>'],
      \ 'PrtHistory(1)': ['<c-i>', '<up>']
      \ }

map ,fb :CtrlPBuffer<cr>
map ,fr :CtrlP .<cr>
map ,ff :CtrlP<cr>
map ,fm :CtrlPMixed<cr>
