set t_Co=256

set encoding=utf-8
set fileencodings=utf-8,euc-jp,sjis,iso-2022-jp
set fileformats=unix,dos,mac

syntax enable
colorscheme wombat256mod
if &diff
  colorscheme leo
endif

set ruler
set autoread
set laststatus=2
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8Pset ambiwidth=double
set wildmenu
set wildmode=list:longest,full
set ignorecase
set smartcase
set nowrapscan
set hlsearch
set incsearch
set nobackup
set noswapfile

set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

set autoindent
set cindent
set backspace=indent,eol,start
set showmatch
set whichwrap=b,s,h,l,<,>,[,]
set showcmd
set showmode

set ambiwidth=double

set hidden

set formatoptions-=r
set formatoptions-=o

inoremap <ESC> <ESC>:set iminsert=0<CR>
nnoremap <ESC><ESC> :nohlsearch<CR>
nnoremap <C-C><C-C><C-C> :nohlsearch<CR>
inoremap <ESC> <ESC>:set iminsert=0<CR>
nnoremap <silent> q :<C-u>q!<CR>

vnoremap 9 $
nnoremap 9 $

" window move
nnoremap <TAB> <C-w><C-w>

" normal mode enter
nnoremap <CR> i<CR><Esc>

set clipboard=unnamed

" tmux + vim scrolling slowly
set lazyredraw
set ttyfast
