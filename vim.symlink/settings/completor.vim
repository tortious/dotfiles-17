" let g:completor_gocode_binary = '/Users/bkonowitz/bin/gocode'
let g:completor_gocode_binary = '~/bin/gocode'
let g:completor_complete_options = 'menuone,noselect,preview'

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
