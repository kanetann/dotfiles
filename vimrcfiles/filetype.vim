autocmd BufNewFile,BufRead *.pm     set filetype=perl
autocmd BufNewFile,BufRead *.pl     set filetype=perl
autocmd BufNewFile,BufRead *.psgi   set filetype=perl
autocmd BufNewFile,BufRead *.t      set filetype=perl
autocmd BufNewFile,BufRead *.rb     set filetype=ruby
autocmd BufNewFile,BufRead *.html.php     set filetype=html
autocmd FileType * setlocal formatoptions-=ro

au FileType ruby set tabstop=2 softtabstop=2 shiftwidth=2 expandtab autoindent
au FileType perl set tabstop=4 softtabstop=4 shiftwidth=4 expandtab autoindent