if &compatible
  set nocompatible
endif
set runtimepath^=~/dotfiles/dein/repos/github.com/Shougo/dein.vim

call dein#begin(expand('~/.cache/dein'))
call dein#add('Shougo/dein.vim')

" grep
" call dein#add('Shougo/unite.vim.git')
" call dein#add('Sixeight/unite-grep.git')
" call dein#add('Shougo/vimproc.vim', {'build' : 'make'})
" call dein#add('Shougo/vimfiler.vim')

" finder
call dein#add('ctrlpvim/ctrlp.vim')
call dein#add('mileszs/ack.vim')

" utility
call dein#add('sickill/vim-monokai.git')
call dein#add('kana/vim-fakeclip.git')
call dein#add('tyru/open-browser.vim')
call dein#add('kannokanno/previm.git')


" ruby plugins
call dein#add('vim-ruby/vim-ruby.git')
call dein#add('tpope/vim-rails.git')
call dein#add('slim-template/vim-slim')
" call dein#add('ecomba/vim-ruby-refactoring.git')

call dein#add('scrooloose/syntastic.git')
call dein#add('vim-scripts/tComment')
call dein#add('tpope/vim-surround.git')
call dein#add('editorconfig/editorconfig-vim.git')
" call dein#add('tpope/vim-endwise.git')
" call dein#add('nelstrom/vim-textobj-rubyblock.git')
" call dein#add('shanlalit/vim-autoclose.git')

" git plugins
call dein#add('airblade/vim-gitgutter.git')
call dein#add('rizzatti/dash.vim')


call dein#end()

if dein#check_install()
  call dein#install()
endif

filetype plugin indent on

source ~/dotfiles/vimrcfiles/basic.vim
source ~/dotfiles/vimrcfiles/open-browser.vim
source ~/dotfiles/vimrcfiles/rails.vim
source ~/dotfiles/vimrcfiles/syntastic.vim
" source ~/dotfiles/vimrcfiles/unite.vim
" source ~/dotfiles/vimrcfiles/vimfiler.vim
" source ~/dotfiles/vimrcfiles/tagbar.vim
" source ~/dotfiles/vimrcfiles/vim-over.vim
" source ~/dotfiles/vimrcfiles/DBGPavim.vim
" source ~/dotfiles/vimrcfiles/RST-Tables.vim
" source ~/dotfiles/vimrcfiles/vim-fugitive.vim
" source ~/dotfiles/vimrcfiles/vim-mou.vim
source ~/dotfiles/vimrcfiles/dash.vim
" source ~/dotfiles/vimrcfiles/matchit.vim
" source ~/dotfiles/vimrcfiles/alpaca_tags.vim
source ~/dotfiles/vimrcfiles/previm.vim
" source ~/dotfiles/vimrcfiles/switch.vim
source ~/dotfiles/vimrcfiles/vim-gitgutter.vim
" source ~/dotfiles/vimrcfiles/vim-coffee-script.vim
source ~/dotfiles/vimrcfiles/ctrlp.vim
source ~/dotfiles/vimrcfiles/ack.vim
