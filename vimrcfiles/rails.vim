" rails.vim
nnoremap <Space>rr :R
nnoremap <Space>rp :w<CR>:Rpre<CR><CR>

let g:rails_projections = { 'app/decorators/*.rb': { 'command': 'decorator' }}
