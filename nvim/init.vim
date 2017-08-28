"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')

  call dein#load_toml('~/.config/nvim/dein.toml',{'lazy': 0})
  " call dein#load_toml('~/.config/nvim/dein_lazy.toml',{'lazy': 1})

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

set clipboard+=unnamed
set ignorecase
set smartcase
set hlsearch
set incsearch
set showmatch
set whichwrap=b,s,h,l,<,>,[,]
au FileType * setlocal formatoptions-=ro

nnoremap <silent> q :<C-u>q!<CR>
vnoremap 9 $
nnoremap 9 $
vnoremap v $
