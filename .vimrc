" vundle settings
set nocompatible
filetype plugin indent off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
  call neobundle#rc(expand('~/.vim/bundle'))
endif

NeoBundle 'git://github.com/Shougo/neobundle.vim'
NeoBundle 'git://github.com/Shougo/neocomplcache.git'
NeoBundle 'git://github.com/Shougo/unite.vim.git'
NeoBundle 'git://github.com/tpope/vim-surround.git'
NeoBundle 'git://github.com/thinca/vim-quickrun.git'
NeoBundle 'git://github.com/thinca/vim-ref.git'
NeoBundle 'git://github.com/kana/vim-fakeclip.git'
NeoBundle 'git://github.com/vim-scripts/rails.vim.git'
NeoBundle 'git://github.com/harajune/git-vim.git'
NeoBundle 'git://github.com/vim-scripts/Align.git'
NeoBundle 'git://github.com/h1mesuke/unite-outline.git'
NeoBundle 'git://github.com/tsukkee/unite-help.git'
NeoBundle 'git://github.com/altercation/vim-colors-solarized.git'
NeoBundle 'git://github.com/vim-scripts/wombat256.vim'
NeoBundle 'git://github.com/mattn/zencoding-vim.git'
NeoBundle 'git://github.com/shanlalit/vim-autoclose.git'
NeoBundle 'git://github.com/t9md/vim-textmanip.git'
NeoBundle 'git://github.com/c9s/perlomni.vim'
NeoBundle 'git://github.com/vim-scripts/YankRing.vim'
NeoBundle 'git://github.com/vim-scripts/matchit.zip'
"NeoBundle 'git://github.com/vim-scripts/Indent-Guides'
NeoBundle 'git://github.com/vim-scripts/tComment'
NeoBundle 'git://github.com/Sixeight/unite-grep'
NeoBundle 'git://github.com/Shougo/vimproc'
NeoBundle 'git://github.com/mikewest/vimroom.git'
NeoBundle 'git://github.com/ujihisa/unite-colorscheme.git'
NeoBundle 'git://github.com/vim-scripts/Color-Sampler-Pack.git'
NeoBundle 'git://github.com/mattn/webapi-vim.git'
NeoBundle 'git://github.com/mattn/vimplenote-vim.git'
NeoBundle 'git://github.com/tyru/open-browser.vim.git'
NeoBundle 'git://github.com/scrooloose/nerdcommenter.git'
NeoBundle 'git://github.com/Lokaltog/vim-easymotion.git'
NeoBundle 'git://github.com/tpope/vim-fugitive.git'
NeoBundle 'git://github.com/kanetann/excitetranslate-vim.git'
NeoBundle 'git://github.com/Shougo/vimshell.git'
NeoBundle 'git://github.com/Shougo/vimfiler.git'
NeoBundle 'git://github.com/vim-jp/vimdoc-ja.git'
NeoBundle 'git://github.com/t9md/vim-quickhl.git'
NeoBundle 'git://github.com/Lokaltog/vim-powerline.git'
NeoBundle 'git://github.com/othree/javascript-syntax.vim.git'
NeoBundle 'git://github.com/pangloss/vim-javascript.git'
NeoBundle 'git://github.com/vim-scripts/Source-Explorer-srcexpl.vim.git'
NeoBundle 'git://github.com/vim-scripts/trinity.vim.git'
NeoBundle 'git://github.com/vim-scripts/The-NERD-tree.git'
NeoBundle 'git://github.com/vim-scripts/taglist.vim.git'
NeoBundle 'git://github.com/kchmck/vim-coffee-script.git'
NeoBundle 'git://github.com/scrooloose/syntastic.git'
NeoBundle 'git://github.com/tpope/vim-rails.git'
NeoBundle 'git://github.com/vim-scripts/Better-Javascript-Indentation.git'
"NeoBundle 'git://github.com/vim-scripts/OOP-javascript-indentation.git'
NeoBundle 'git://github.com/tpope/vim-markdown.git'
NeoBundle 'git://github.com/Shougo/neocomplcache-snippets-complete'
NeoBundle 'git://github.com/vim-scripts/perl-support.vim.git'
NeoBundle 'git://github.com/hotchpotch/perldoc-vim.git'
NeoBundle 'git://github.com/t9md/vim-chef.git'
NeoBundle 'git://github.com/glidenote/octoeditor.vim.git'

filetype plugin indent on

set t_Co=256

" encoding
" to see http://www.kawaz.jp/pukiwiki/?vim#cb691f26
" 文字コードの自動認識
" if &encoding !=# 'utf-8'
"   set encoding=japan
"   set fileencoding=japan
" endif
" if has('iconv')
"   let s:enc_euc = 'euc-jp'
"   let s:enc_jis = 'iso-2022-jp'
"   " iconvがeucJP-msに対応しているかをチェック
"   if iconv("\x87\x64\x87\x6a", 'cp932', 'eucjp-ms') ==# "\xad\xc5\xad\xcb"
"     let s:enc_euc = 'eucjp-ms'
"     let s:enc_jis = 'iso-2022-jp-3'
"   " iconvがJISX0213に対応しているかをチェック
"   elseif iconv("\x87\x64\x87\x6a", 'cp932', 'euc-jisx0213') ==# "\xad\xc5\xad\xcb"
"     let s:enc_euc = 'euc-jisx0213'
"     let s:enc_jis = 'iso-2022-jp-3'
"   endif
"   " fileencodingsを構築
"   if &encoding ==# 'utf-8'
"     let s:fileencodings_default = &fileencodings
"     let &fileencodings = s:enc_jis .','. s:enc_euc .',cp932'
"     let &fileencodings = &fileencodings .','. s:fileencodings_default
"     unlet s:fileencodings_default
"   else
"     let &fileencodings = &fileencodings .','. s:enc_jis
"     set fileencodings+=utf-8,ucs-2le,ucs-2
"     if &encoding =~# '^\(euc-jp\|euc-jisx0213\|eucjp-ms\)$'
"       set fileencodings+=cp932
"       set fileencodings-=euc-jp
"       set fileencodings-=euc-jisx0213
"       set fileencodings-=eucjp-ms
"       let &encoding = s:enc_euc
"       let &fileencoding = s:enc_euc
"     else
"       let &fileencodings = &fileencodings .','. s:enc_euc
"     endif
"   endif
"   " 定数を処分
"   unlet s:enc_euc
"   unlet s:enc_jis
" endif
" " 日本語を含まない場合は fileencoding に encoding を使うようにする
" if has('autocmd')
"   function! AU_ReCheck_FENC()
"     if &fileencoding =~# 'iso-2022-jp' && search("[^\x01-\x7e]", 'n') == 0
"       let &fileencoding=&encoding
"     endif
"   endfunction
"   autocmd BufReadPost * call AU_ReCheck_FENC()
" endif
" " 改行コードの自動認識
" set fileformats=unix,dos,mac
" " □とか○の文字があってもカーソル位置がずれないようにする
" if exists('&ambiwidth')
"   set ambiwidth=double
" endif

set encoding=utf-8
set fileencodings=utf-8,euc-jp,sjis,iso-2022-jp
set fileformats=unix,dos,mac

" editor
syntax enable
"colorscheme darkblue
"colorscheme desert
"set background=dark
"colorscheme solarized
"let g:solarized_termcolors=256
"colorscheme wombat256
"colorscheme wombat256mod
"colorscheme molokai
colorscheme wombat256mod
if &diff
        colorscheme leo
endif

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

" do not auto comment
set formatoptions-=r
set formatoptions-=o

" keybind
nmap <Space>b :ls<CR>:buffer<Space>
nnoremap <Space>gg <Esc>:<C-u>vimgrep // **/* \| cw<Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left>
"nnoremap <Space>gc <Esc>:<C-u>vimgrep // % \| cw<Left><Left><Left><Left><Left><Left><Left><Left>
"nnoremap <Space>gg <Esc>:<C-u>vimgrep /<C-r><C-w>/j **/* \| cw<Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left>

autocmd BufNewFile,BufRead *.pm     set filetype=perl
autocmd BufNewFile,BufRead *.pl     set filetype=perl
autocmd BufNewFile,BufRead *.psgi   set filetype=perl
autocmd BufNewFile,BufRead *.t      set filetype=perl
autocmd BufNewFile,BufRead *.rb     set filetype=ruby

"inoremap jj <ESC>
inoremap <ESC> <ESC>:set iminsert=0<CR>

map <C-N>   :bnext<CR>
map <C-P>   :bprevious<CR>

" quickrun 
let g:quickrun_config={'*': {'split': 'below'}}
noremap <silent> <Space>r :<C-u>QuickRun<CR>

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
let g:quickrun_config['markdown'] = {
      \ 'type': 'markdown/pandoc',
      \ 'outputter': 'browser',
      \ 'cmdopt': '-s'
      \ }

set splitbelow
set splitright

" clipboard
"set clipboard=unnamed,autoselect
"set paste
"set pastetoggle=,p

" neocomplecache
let g:acp_enableAtStartup = 0
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_underbar_completion = 1
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
    \ }
if !exists('g:neocomplcache_keyword_patterns')
  let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'
imap <expr><C-k> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)" : pumvisible() ? "\<C-n>" : "\<C-k>"

smap <C-k> <Plug>(neocomplcache_snippets_expand)
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()

" Recommended key-mappings.
inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"
"inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
"inoremap <expr><C-y>  neocomplcache#close_popup()
"inoremap <expr><C-e>  neocomplcache#cancel_popup()


" AutoComplPop like behavior.
"let g:neocomplcache_enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplcache_enable_auto_select = 1
"let g:neocomplcache_disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<TAB>"
"inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'
let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplcache_omni_patterns.c = '\%(\.\|->\)\h\w*'
let g:neocomplcache_omni_patterns.cpp = '\h\w*\%(\.\|->\)\h\w*\|\h\w*::'

" zencoding-vim
let g:use_zen_complete_tag = 1
let g:user_zen_expandabbr_key = '<C-e>'
let g:user_zen_next_key = '<C-e><C-e>'

" unite.vim
let g:unite_source_file_mru_limit = 10
let g:unite_enable_start_insert = 1
"let g:unite_source_grep_default_opts = '-iRHn'
let g:unite_source_grep_max_candidates = 100
nnoremap <silent> <Space>ud :<C-u>Unite file_rec<CR>
nnoremap <silent> <Space>uD :<C-u>Unite file_rec -auto-preview<CR>
nnoremap <silent> <Space>ub :<C-u>Unite buffer<CR>
nnoremap <silent> <Space>uh :<C-u>Unite ref/perldoc help ref/man<CR>
nnoremap <silent> <Space>uo :<C-u>Unite outline<CR>
nnoremap <silent> <Space>uO :<C-u>Unite -auto-preview outline<CR>
nnoremap <silent> <Space>ul :<C-u>Unite line<CR>
nnoremap <silent> <Space>uc :<C-u>Unite -auto-preview colorscheme<CR>
"nnoremap <silent> <Space>ug :<C-u>Unite grep<CR><CR>
nnoremap <silent> <Space>ug :<C-u>Unite grep:.:-iRHn:
nnoremap <silent> <Space>us :<C-u>Unite snippet<CR>

" textmanip
vmap <C-u> <Plug>(textmanip-move-up)
vmap <C-d> <Plug>(textmanip-move-down)
vmap <C-h> <Plug>(textmanip-move-left)
vmap <C-l> <Plug>(textmanip-move-right)

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
nnoremap <C-C><C-C> :nohlsearch<CR>

" vimfiler
"let g:vimfiler_as_default_explorer = 1
" let g:vimfiler_execute_file_list = {}
" let g:vimfiler_execute_file_list['rb']    = 'vim'
" let g:vimfiler_execute_file_list['pl']    = 'vim'
" let g:vimfiler_execute_file_list['pm']    = 'vim'
" let g:vimfiler_execute_file_list['t']     = 'vim'
" let g:vimfiler_execute_file_list['tx']    = 'vim'
" let g:vimfiler_execute_file_list['py']    = 'vim'
" let g:vimfiler_execute_file_list['htm']   = 'vim'
" let g:vimfiler_execute_file_list['html']  = 'vim'
" let g:vimfiler_execute_file_list['xhtml'] = 'vim'

"foldmethod (> use Unite outline.)
"set foldmethod=indent

" YankRing(p after ctrl+p)
let g:yankring_history_dir = expand('$HOME')
let g:yankring_history_file = '.yankring_history'
let g:yankring_max_history = 10
let g:yankring_window_height = 13
let g:yankring_manual_clipboard_check = 0
 
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
autocmd BufWritePost *.rb,*.pl,*.pm,*.t,*.tx,*.php silent :!ctags --exclude='*.js' -R .

" git-vim
let g:git_no_map_default = 1
let g:git_command_edit = 'rightbelow vnew'
nnoremap <silent> <Space>gd :<C-u>GitDiff<CR>
nnoremap <silent> <Space>gD :<C-u>GitDiff --cached<CR>
nnoremap <silent> <Space>gs :<C-u>GitStatus<CR>
nnoremap <silent> <Space>gl :<C-u>GitLog<CR>
nnoremap <silent> <Space>gL :<C-u>GitLog -u \| head -10000<CR>
nnoremap <silent> <Space>ga :<C-u>GitAdd<CR>
nnoremap <silent> <Space>gc :<C-u>GitCommit<CR>
nnoremap <silent> <Space>gC :<C-u>GitCommit --amend<CR>
nnoremap <silent> <Space>gp :<C-u>GitPush<CR>
nnoremap <silent> <Space>gP :<C-u>GitPull<CR>
nnoremap          <Space>go :<C-u>GitCheckout<Space>
nnoremap          <Space>gv :<C-u>GitVimDiff<Space>
nnoremap <silent> <Space>gb :<C-u>Gblame<CR>

" alternate file toggle shortcut key
nnoremap <C-i> <C-^>

" quit 
nnoremap <silent> q :<C-u>q!<CR>

if has('gui_macvim')
  set imdisable
  set antialias
  set guifontwide=Osaka:h14
  set guifont=Osaka-Mono:h14
endif


" vimplenote settings.
" search, trash, update, new, tag setting, list, delete.
nnoremap <Space>vs :<C-u>VimpleNote -s<Space>
nnoremap <Space>vd :<C-u>VimpleNote -d<CR>
nnoremap <Space>vu :<C-u>VimpleNote -u<CR>
nnoremap <Space>vn :<C-u>VimpleNote -n<CR>
nnoremap <Space>vt :<C-u>VimpleNote -t<Space>
nnoremap <Space>vl :<C-u>VimpleNote -l<CR>
nnoremap <Space>vD :<C-u>VimpleNote -D<CR>

" open-browser.vim
let g:netrw_nogx = 1
nmap gx <Plug>(openbrowser-smart-search)
vmap gx <Plug>(openbrowser-smart-search)

" Set augroup.
augroup MyAutoCmd
  autocmd!
augroup END

" Easily edit .vimrc
nnoremap <silent> <Space>ev  :<C-u>edit ~/dotfiles/.vimrc<CR>

" Load .gvimrc after .vimrc edited at GVim.
nnoremap <silent> <Space>rv :<C-u>source ~/dotfiles/.vimrc<CR>

" Reload .vimrc and .gvimrc automatically.
if !has('gui_running') && !(has('win32') || has('win64'))
  autocmd MyAutoCmd BufWritePost .vimrc nested source ~/dotfiles/.vimrc
else
  autocmd MyAutoCmd BufWritePost .vimrc source ~/dotfiles/.vimrc
endif

" excitetranslate-vim
vnoremap <C-t> :<C-u>'<,'>ExciteTranslate<CR>

" vimfiler
let g:vimfiler_as_default_explorer = 1
" nnoremap <Space>vf :<C-u>VimFilerSplit<CR>
" nnoremap <Space>vf :<C-u>VimFiler -buffer-name=explorer -split -simple -winwidth=35 -toggle -no-quit -double<CR>
nnoremap <Space>vf :<C-u>VimFiler -buffer-name=explorer -split -simple -winwidth=35 -toggle -no-quit<CR>

" quickhl
nnoremap <Space>m :<C-u>QuickhlAdd <C-r><C-w><CR>
vnoremap <Space>m :<C-u>QuickhlAdd <C-r><C-w><CR> 
nnoremap <Space>M :<C-u>QuickhlReset<CR>

" paste mode
nnoremap <Space>sp :<C-u>set paste<CR>
nnoremap <Space>sn :<C-u>set nopaste<CR>

vnoremap v $h
nnoremap <Space>d Da

if filereadable(expand('~/.vimrc.local'))
  source ~/.vimrc.local
endif

vnoremap 9 $
nnoremap 9 $

if has("autocmd")
    autocmd BufReadPost *
    \ if line("'\"") > 0 && line ("'\"") <= line("$") |
    \   exe "normal! g'\"" |
    \ endif
endif

"nnoremap <C-t> :TrinityToggleAll<CR><C-w><C-w>
nnoremap <silent> <Space>t  :TrinityToggleAll<CR><C-w><C-w>

" TODO : skelton
"augroup SkeletonAu
"    　　autocmd!
"    　　autocmd BufNewFile *.html 0r $HOME/.vim/skel.html
"    　　autocmd BufNewFile *.pl 0r $HOME/.vim/skel.pl
"    　　autocmd BufNewFile *.pm 0r $HOME/.vim/skel.pm
"augroup END
"
"
"
let g:syntastic_mode_map = { 'mode': 'passive',
                           \ 'active_filetypes': ['perl', 'php', 'ruby', 'javascript'],
                           \ 'passive_filetypes': [] }

inoremap <C-l> <Right>

nnoremap <silent> <C-t> :<C-u>tabnew<CR>

" octoeditor settings
let g:octopress_path = '~/project/octopress'
nnoremap <Space>on :OctopressNew<CR>
nnoremap <Space>ol :OctopressList<CR>
nnoremap <Space>og :OctopressGenerate<CR>
nnoremap <Space>od :OctopressDeploy<CR>
