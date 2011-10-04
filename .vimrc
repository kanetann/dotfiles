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
Bundle 'git://github.com/vim-scripts/Align.git'
Bundle 'git://github.com/h1mesuke/unite-outline.git'
Bundle 'git://github.com/tsukkee/unite-help.git'
Bundle 'git://github.com/altercation/vim-colors-solarized.git'
Bundle 'git://github.com/vim-scripts/wombat256.vim'
Bundle 'git://github.com/mattn/zencoding-vim.git'
Bundle 'git://github.com/shanlalit/vim-autoclose.git'
Bundle 'git://github.com/t9md/vim-textmanip.git'
Bundle 'git://github.com/c9s/perlomni.vim'
"Bundle 'git://github.com/vim-scripts/project.tar.gz.git'
"Bundle 'tyru/skk.vim'
"Bundle 'im_control.vim'
"Bundle 'commentout.vim'
Bundle 'git://github.com/Shougo/vimfiler'
Bundle 'git://github.com/vim-scripts/YankRing.vim'
Bundle 'git://github.com/vim-scripts/matchit.zip'
Bundle 'git://github.com/vim-scripts/Indent-Guides'
Bundle 'git://github.com/vim-scripts/tComment'
"Bundle 'git://github.com/vim-scripts/errormarker.vim'
Bundle 'git://github.com/Sixeight/unite-grep'
"Bundle 'git://github.com/t9md/vim-unite-lines'
Bundle 'git://github.com/Shougo/vimproc'

filetype plugin indent on

set t_Co=256

" encoding
" to see http://www.kawaz.jp/pukiwiki/?vim#cb691f26
" 文字コードの自動認識
if &encoding !=# 'utf-8'
  set encoding=japan
  set fileencoding=japan
endif
if has('iconv')
  let s:enc_euc = 'euc-jp'
  let s:enc_jis = 'iso-2022-jp'
  " iconvがeucJP-msに対応しているかをチェック
  if iconv("\x87\x64\x87\x6a", 'cp932', 'eucjp-ms') ==# "\xad\xc5\xad\xcb"
    let s:enc_euc = 'eucjp-ms'
    let s:enc_jis = 'iso-2022-jp-3'
  " iconvがJISX0213に対応しているかをチェック
  elseif iconv("\x87\x64\x87\x6a", 'cp932', 'euc-jisx0213') ==# "\xad\xc5\xad\xcb"
    let s:enc_euc = 'euc-jisx0213'
    let s:enc_jis = 'iso-2022-jp-3'
  endif
  " fileencodingsを構築
  if &encoding ==# 'utf-8'
    let s:fileencodings_default = &fileencodings
    let &fileencodings = s:enc_jis .','. s:enc_euc .',cp932'
    let &fileencodings = &fileencodings .','. s:fileencodings_default
    unlet s:fileencodings_default
  else
    let &fileencodings = &fileencodings .','. s:enc_jis
    set fileencodings+=utf-8,ucs-2le,ucs-2
    if &encoding =~# '^\(euc-jp\|euc-jisx0213\|eucjp-ms\)$'
      set fileencodings+=cp932
      set fileencodings-=euc-jp
      set fileencodings-=euc-jisx0213
      set fileencodings-=eucjp-ms
      let &encoding = s:enc_euc
      let &fileencoding = s:enc_euc
    else
      let &fileencodings = &fileencodings .','. s:enc_euc
    endif
  endif
  " 定数を処分
  unlet s:enc_euc
  unlet s:enc_jis
endif
" 日本語を含まない場合は fileencoding に encoding を使うようにする
if has('autocmd')
  function! AU_ReCheck_FENC()
    if &fileencoding =~# 'iso-2022-jp' && search("[^\x01-\x7e]", 'n') == 0
      let &fileencoding=&encoding
    endif
  endfunction
  autocmd BufReadPost * call AU_ReCheck_FENC()
endif
" 改行コードの自動認識
set fileformats=unix,dos,mac
" □とか○の文字があってもカーソル位置がずれないようにする
if exists('&ambiwidth')
  set ambiwidth=double
endif

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

set splitbelow
set splitright

" clipboard
"set clipboard=unnamed,autoselect
"set paste
"set pastetoggle=,p

" neocomplecache
let g:neocomplcache_enable_at_startup = 1

" zencoding-vim
let g:use_zen_complete_tag = 1
let g:user_zen_expandabbr_key = '<c-e>'

" unite.vim
nnoremap <silent> <Space>ud :<C-u>UniteWithCurrentDir -winheight=20 file_mru file<CR>
"nnoremap <silent> <Space>uh :<C-u>Unite -winheight=10 -start-insert help<CR>
nnoremap <silent> <Space>uh :<C-u>Unite help<CR>
nnoremap <silent> <Space>uo :<C-u>Unite outline<CR>
nnoremap <silent> <Space>ug :<C-u>UniteWithCursorWord grep<CR>
"""""""""" nnoremap <silent> <Space>ul :<C-u>UniteWithCursorWord lines<CR>
nnoremap <silent> <Space>ul :<C-u>UniteWithCursorWord line<CR>
nnoremap <silent> <Space>urm :<C-u>Unite ref/man<CR>
nnoremap <silent> <Space>urp :<C-u>Unite ref/perldoc<CR>

" textmanip
vmap <C-j> <Plug>(Textmanip.move_selection_down)
vmap <C-k> <Plug>(Textmanip.move_selection_up)
vmap <C-h> <Plug>(Textmanip.move_selection_left)
vmap <C-l> <Plug>(Textmanip.move_selection_right)
vmap <M-d> <Plug>(Textmanip.duplicate_selection_v)
nmap <M-d> <Plug>(Textmanip.duplicate_selection_n)

" vim-ref
"wget http://www.php.net/get/php_manual_ja.tar.gz/from/jp2.php.net/mirror
let g:ref_phpmanual_path = $HOME . '/.vim/dict/php-chunked-xhtml/'

" project.vim
"let g:proj_flags = 'imst'
"let g:proj_window_width = 48
"nmap <silent> <Leader>P <Plug>ToggleProject
"nmap <silent> <Leader>p :Project<CR>
"let g:proj_run1='!git add %f'
"let g:proj_run_fold1='*!git add %f'
"let g:proj_run2='!git checkout --  %f'
"let g:proj_run_fold2='*!git checkout -- %f'
"let g:proj_run3='!git status'
"autocmd BufAdd .vimprojects silent! %foldopen!
"if getcwd() != $HOME
"    if filereadable(getcwd(). '/.vimprojects')
"        exec 'Project .vimprojects'
"    endif
"endif

nnoremap <ESC><ESC> :nohlsearch<CR>

" vimfiler
let g:vimfiler_as_default_explorer = 1

"foldmethod (> use Unite outline.)
"set foldmethod=indent

" YankRing(p after ctrl+p)
let g:yankring_history_dir = expand('$HOME')
let g:yankring_history_file = '.yankring_history'
let g:yankring_max_history = 10
let g:yankring_window_height = 13
 
" " indent-guides
" let g:indent_guides_enable_on_vim_startup = 1
" let g:indent_guides_color_change_percent= 30
" let g:indent_guides_guide_size = 1
 
"" errormarker
"autocmd FileType perl,cgi :compiler perl
"let g:errormarker_errortext = '!!'
"let g:errormarker_warningtext = '??'
"let g:errormarker_errorgroup = 'Error'
"let g:errormarker_warninggroup = 'Todo'
"if !exists('g:flymake_enabled')
"    let g:flymake_enabled = 1
"    autocmd BufWritePost *.rb,*.pl,*.pm,*.t silent make
"endif
"if has('win32') || has('win64')
"    let g:errormarker_erroricon = expand('~/.vim/signs/err.bmp')
"    let g:errormarker_warningicon = expand('~/.vim/signs/warn.bmp')
"else
"    let g:errormarker_erroricon = expand('~/.vim/signs/err.bmp')
"    let g:errormarker_warningicon = expand('~/.vim/signs/err.png')
"endif

" tagfile
autocmd BufWritePost *.rb,*.pl,*.pm,*.t,*.tx silent :!ctags -R .
