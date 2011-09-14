" vundle settings
set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'git://github.com/Shougo/neocomplcache.git'
Bundle 'git://github.com/Shougo/unite.vim.git'
Bundle 'git://github.com/scrooloose/nerdcommenter.git'
Bundle 'git://github.com/tpope/vim-surround.git'
Bundle 'git://github.com/thinca/vim-quickrun.git'
Bundle 'git://github.com/thinca/vim-ref.git'
Bundle 'git://github.com/kana/vim-fakeclip.git'
"Bundle 'L9'
"Bundle 'FuzzyFinder'
Bundle 'git://github.com/vim-scripts/rails.vim.git'
"Bundle 'motemen/git-vim.git'
Bundle 'git://github.com/harajune/git-vim.git'
"Bundle 'kakkyz81/evervim.git'
Bundle 'Align'
Bundle 'git://github.com/h1mesuke/unite-outline.git'
Bundle 'git://github.com/tsukkee/unite-help.git'
Bundle 'git://github.com/altercation/vim-colors-solarized.git'
Bundle 'git://github.com/vim-scripts/wombat256.vim'
Bundle 'git://github.com/mattn/zencoding-vim.git'
Bundle 'git://github.com/shanlalit/vim-autoclose.git'
Bundle 'git://github.com/t9md/vim-textmanip.git'
Bundle 'git://github.com/c9s/perlomni.vim'
"Bundle 'tyru/skk.vim'
"Bundle 'im_control.vim'
"Bundle 'commentout.vim'

filetype plugin indent on

set t_Co=256

" Perl syntax check configurations for errormaker.vim
"compiler perl
"autocmd BufWritePost *.pl,*.pm silent make %
"call perl5lib#set_perl5lib()

" editor
syntax enable
"colorscheme darkblue
"colorscheme desert
"set background=dark
"colorscheme solarized
"let g:solarized_termcolors=256
"colorscheme wombat256
colorscheme wombat256mod

"set number
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
set incsearch

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
set backspace=indent,eol,start
set showmatch
set whichwrap=b,s,h,l,<,>,[,] 
set showcmd
set showmode

" buffer
set hidden

" keybind
nmap <Space>b :ls<CR>:buffer<Space>
nnoremap ;g <Esc>:<C-u>vimgrep // **/* \| cw<Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left>
nnoremap ;;g <Esc>:<C-u>vimgrep /<C-r><C-w>/ **/* \| cw

"inoremap jj <ESC>
inoremap <ESC> <ESC>:set iminsert=0<CR>

map <C-N>   :bnext<CR>
map <C-P>   :bprevious<CR>

" quickrun 
" 横分割をするようにする
let g:quickrun_config={'*': {'split': ''}}

augroup QuickRunUnitTest
  autocmd!
  autocmd BufWinEnter,BufNewFile *test.php set filetype=php.unit
  autocmd BufWinEnter,BufNewFile test_*.py set filetype=python.unit
  autocmd BufWinEnter,BufNewFile *.t set filetype=perl.unit
augroup END
let g:quickrun_config = {}
let g:quickrun_config['php.unit'] = {'command': 'phpunitrunner'}
let g:quickrun_config['python.unit'] = {'command': 'nosetests', 'cmdopt': '-s -vv'}
let g:quickrun_config['perl.unit'] = {'command': 'prove'}

" 横分割時は下へ､ 縦分割時は右へ新しいウィンドウが開くようにする
set splitbelow
set splitright

" clipboard
set clipboard=unnamed,autoselect
"set paste
set pastetoggle=,p

" neocomplecache
let g:neocomplcache_enable_at_startup = 1

" zencoding-vim
let g:use_zen_complete_tag = 1
let g:user_zen_expandabbr_key = '<c-e>'

" unite.vim
nnoremap <silent> <Space>ud :<C-u>UniteWithCurrentDir -winheight=10 file file_mru buffer<CR>
nnoremap <silent> <Space>uh :<C-u>Unite -winheight=10 -start-insert help<CR>

" textmanip
vmap <C-j> <Plug>(Textmanip.move_selection_down)
vmap <C-k> <Plug>(Textmanip.move_selection_up)
vmap <C-h> <Plug>(Textmanip.move_selection_left)
vmap <C-l> <Plug>(Textmanip.move_selection_right)
vmap <M-d> <Plug>(Textmanip.duplicate_selection_v)
nmap <M-d> <Plug>(Textmanip.duplicate_selection_n)

"" errormarker
"compiler perl
"autocmd BufWritePost *.pl,*.pm silent make %

" vim-ref
"wget http://www.php.net/get/php_manual_ja.tar.gz/from/jp2.php.net/mirror
let g:ref_phpmanual_path = $HOME . '/.vim/dict/php-chunked-xhtml/'

""ノーマルモードの<C-^>を無効化
"nnoremap <silent> <C-^> <Nop>
"inoremap <silent> <ESC> <ESC>:set iminsert=0<CR>  " ESCでIMEを確実にOFF"


