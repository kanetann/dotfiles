" vundle settings
set nocompatible
filetype plugin indent off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
  call neobundle#rc(expand('~/.vim/bundle'))
endif

NeoBundle 'git://github.com/Shougo/neobundle.vim'

NeoBundle 'git://github.com/Lokaltog/vim-powerline.git'
NeoBundle 'git://github.com/Shougo/neocomplcache.git'
NeoBundle 'git://github.com/Shougo/neosnippet.git'
NeoBundle 'git://github.com/Shougo/unite.vim.git'
NeoBundle 'git://github.com/Shougo/vimfiler.git'
NeoBundle 'git://github.com/Shougo/vimproc.git'
NeoBundle 'git://github.com/Sixeight/unite-grep.git'
NeoBundle 'git://github.com/h1mesuke/unite-outline.git'
NeoBundle 'git://github.com/jpalardy/vim-slime.git'
NeoBundle 'git://github.com/kana/vim-fakeclip.git'
NeoBundle 'git://github.com/mattn/webapi-vim.git'
NeoBundle 'git://github.com/mattn/zencoding-vim.git'
NeoBundle 'git://github.com/scrooloose/syntastic.git'
NeoBundle 'git://github.com/shanlalit/vim-autoclose.git'
NeoBundle 'git://github.com/taka84u9/vim-ref-ri.git'
NeoBundle 'git://github.com/thinca/vim-quickrun.git'
NeoBundle 'git://github.com/thinca/vim-ref.git'
NeoBundle 'git://github.com/tpope/vim-fugitive.git'
NeoBundle 'git://github.com/tpope/vim-markdown.git'
NeoBundle 'git://github.com/tpope/vim-rails.git'
NeoBundle 'git://github.com/tpope/vim-surround.git'
NeoBundle 'git://github.com/tsukkee/unite-help.git'
NeoBundle 'git://github.com/tyru/open-browser.vim.git'
NeoBundle 'git://github.com/vim-ruby/vim-ruby.git'
NeoBundle 'git://github.com/vim-scripts/Align.git'
NeoBundle 'git://github.com/vim-scripts/YankRing.vim'
NeoBundle 'git://github.com/vim-scripts/tComment'
NeoBundle 'git://github.com/vim-scripts/wombat256.vim'
" NeoBundle 'git://github.com/t9md/vim-unite-ack.git'
NeoBundle 'git://github.com/motemen/git-vim.git'


filetype plugin indent on

set t_Co=256

set encoding=utf-8
set fileencodings=utf-8,euc-jp,sjis,iso-2022-jp
set fileformats=unix,dos,mac

" editor
syntax enable
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

autocmd BufNewFile,BufRead *.pm     set filetype=perl
autocmd BufNewFile,BufRead *.pl     set filetype=perl
autocmd BufNewFile,BufRead *.psgi   set filetype=perl
autocmd BufNewFile,BufRead *.t      set filetype=perl
autocmd BufNewFile,BufRead *.rb     set filetype=ruby
autocmd FileType * setlocal formatoptions-=ro

au FileType ruby set tabstop=2 softtabstop=2 shiftwidth=2 expandtab autoindent
au FileType perl set tabstop=4 softtabstop=4 shiftwidth=4 expandtab autoindent

inoremap <ESC> <ESC>:set iminsert=0<CR>

map <C-N>   :bnext<CR>
map <C-P>   :bprevious<CR>

" quickrun 
let g:quickrun_config={'*': {'split': 'below'}}
noremap <silent> <Space>q :<C-u>QuickRun<CR>

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
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()

" Recommended key-mappings.
inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"

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
let g:unite_source_grep_command = 'ag'
let g:unite_source_grep_default_opts = '--nocolor --nogroup --ignore-case'
let g:unite_source_grep_recursive_opt = ''
let g:unite_source_grep_max_candidates = 100
let g:unite_winheight = 10
nnoremap          <Space>uu :<C-u>Unite 
nnoremap <silent> <Space>ud :<C-u>Unite file_rec<CR>
nnoremap <silent> <Space>uD :<C-u>Unite file_rec -auto-preview<CR>
nnoremap <silent> <Space>ub :<C-u>Unite buffer<CR>
nnoremap <silent> <Space>uh :<C-u>Unite ref/perldoc help ref/man<CR>
nnoremap <silent> <Space>uo :<C-u>Unite outline<CR>
nnoremap <silent> <Space>uO :<C-u>Unite -auto-preview outline<CR>
nnoremap <silent> <Space>ul :<C-u>Unite line<CR>
nnoremap <silent> <Space>uc :<C-u>Unite -auto-preview colorscheme<CR>
nnoremap <silent> <Space>ug :<C-u>Unite -no-quit grep:**/*::<CR>
nnoremap <silent> <Space>us :<C-u>Unite snippet<CR>

nnoremap <ESC><ESC> :nohlsearch<CR>
nnoremap <C-C><C-C> :nohlsearch<CR>

" YankRing(p after ctrl+p)
let g:yankring_history_dir = expand('$HOME')
let g:yankring_history_file = '.yankring_history'
let g:yankring_max_history = 10
let g:yankring_window_height = 13
let g:yankring_manual_clipboard_check = 0
 
" tagfile
let OSTYPE = system('uname')
if OSTYPE == "Darwin\n"
    autocmd BufWritePost *.rb,*.pl,*.pm,*.t,*.tx,*.php silent :!/usr/local/Cellar/ctags/5.8/bin/ctags --exclude='*.js' --exclude='vendor/bundler/*' -R .
elseif OSTYPE == "Linux\n"
    autocmd BufWritePost *.rb,*.pl,*.pm,*.t,*.tx,*.php silent :!ctags --exclude='*.js' --exclude='vendor/bundler/*' -R .
endif

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
nnoremap <silent> <Space>er :<C-u>source ~/dotfiles/.vimrc<CR>

" Reload .vimrc and .gvimrc automatically.
if !has('gui_running') && !(has('win32') || has('win64'))
  autocmd MyAutoCmd BufWritePost .vimrc nested source ~/dotfiles/.vimrc
else
  autocmd MyAutoCmd BufWritePost .vimrc source ~/dotfiles/.vimrc
endif

" vimfiler
let g:vimfiler_as_default_explorer = 1
" nnoremap <Space>vf :<C-u>VimFilerSplit<CR>
" nnoremap <Space>vf :<C-u>VimFiler -buffer-name=explorer -split -simple -winwidth=35 -toggle -no-quit -double<CR>
nnoremap <Space>vf :<C-u>VimFiler -buffer-name=explorer -split -simple -winwidth=35 -toggle -no-quit<CR>

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

let g:syntastic_mode_map = { 'mode': 'passive',
                           \ 'active_filetypes': ['perl', 'php', 'ruby', 'javascript'],
                           \ 'passive_filetypes': [] }

nnoremap <silent> <C-t> :<C-u>tabnew<CR>

" ruby tags
if filereadable(expand('~/rtags'))
    au FileType ruby,eruby setl tags+=~/rtags
endif

" neosnipet
" Plugin key-mappings.
imap <C-l> <Plug>(neosnippet_expand_or_jump)
smap <C-l> <Plug>(neosnippet_expand_or_jump)

" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable() ? "\<Plug>(neosnippet_expand_or_jump)" : pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif

" Enable heavy omni completion.
if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'

" NeoBundle
nnoremap <Space>nbi :NeoBundleInstall<CR>
nnoremap <Space>nbu :NeoBundleUpdate<CR>
nnoremap <Space>nbc :NeoBundleClean<CR>

" rails.vim
nnoremap <Space>rr :R
nnoremap <Space>rp :w<CR>:Rpre<CR><CR>

" unite-ruby-require.vim
let g:unite_source_ruby_require_ruby_command = '$HOME/.rbenv/shims/ruby'

" vim-slime
let g:slime_target = "tmux"
let g:slime_paste_file = "$HOME/.slime_paste"

" window move
nnoremap <TAB> <C-w><C-w>
