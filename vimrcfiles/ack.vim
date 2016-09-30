if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

nnoremap <expr>   <C-g>    ':Ack ' . expand('<cword>')
" vnoremap          <C-g>    'y:Ack ' . expand('<cword>')
