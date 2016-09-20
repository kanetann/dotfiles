" unite.vim
let g:unite_enable_start_insert = 1
let g:unite_source_grep_command = 'ag'
let g:unite_source_grep_default_opts = '--nocolor --nogroup --ignore-case --ignore log/'
let g:unite_source_grep_recursive_opt = ''
let g:unite_source_grep_max_candidates = 100
let g:unite_winheight = 10
nnoremap <expr>   <C-g>    ':Unite -no-quit -keep-focus -no-start-insert -auto-highlight grep:.::<CR>' . expand('<cword>')
vnoremap          <C-g>     y:Unite -no-quit -keep-focus -no-start-insert -auto-highlight grep:.::<CR><C-R>"
