" rails.vim
nnoremap <Space>rr :R
nnoremap <Space>rp :w<CR>:Rpre<CR><CR>
nnoremap <Space>aa :A

let g:rails_projections = { 'app/decorators/*.rb': { 'command': 'decorator' }}
