" vundle settings
set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'Shougo/neocomplcache.git'
Bundle 'Shougo/unite.vim.git'
Bundle 'scrooloose/nerdcommenter'
Bundle 'tpope/vim-surround'
Bundle 'thinca/vim-quickrun'
Bundle 'thinca/vim-ref'
Bundle 'kana/vim-fakeclip'
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'rails.vim'
Bundle 'motemen/git-vim.git'
Bundle 'zencoding.vim'
Bundle 'kakkyz81/evervim.git'
Bundle 'Align'
" Bundle 'commentout.vim'

filetype plugin indent on

" editor
syntax enable
"colorscheme darkblue
set number
set ruler
set autoread
set laststatus=2
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8Pset ambiwidth=double
set wildmenu
set wildmode=list:longest,full

" search
set ignorecase
set smartcase
set nowrapscan
set hlsearch

" backup
set nobackup
set noswapfile

" edit
"set list
"set listchars=tab:>-,extends:<,trail:-,eol:\--
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

set autoindent
set cindent
set backspace=2

" buffer
set hidden

" keybind
nmap <Space>b :ls<CR>:buffer<Space>
nnoremap ;g <Esc>:<C-u>vimgrep // **/* \| cw<Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left>
nnoremap ;;g <Esc>:<C-u>vimgrep /<C-r><C-w>/ **/* \| cw

inoremap jj <ESC>

"vnoremap y "*y
"vmap p "+p
"nnoremap y "*y
"nmap p "+p

imap <C-j> <Down>
imap <C-k> <Up>
imap <C-h> <Left>
imap <C-l> <Right>

" quickrun 
" 横分割をするようにする
let g:quickrun_config={'*': {'split': ''}}

" 横分割時は下へ､ 縦分割時は右へ新しいウィンドウが開くようにする
set splitbelow
set splitright

set clipboard=unnamed



