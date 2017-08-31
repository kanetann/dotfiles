" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
nnoremap <C-f> :<C-u>NERDTreeToggle<CR>

Plug 'ctrlpvim/ctrlp.vim'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
let g:ctrlp_max_height = 25
let g:ctrlp_lazy_update = 100

Plug 'ivalkeen/vim-ctrlp-tjump'
nnoremap <c-]> :CtrlPtjump<cr>
vnoremap <c-]> :CtrlPtjumpVisual<cr>
let g:ctrlp_tjump_only_silent = 1

Plug 'ompugao/ctrlp-grep'
nnoremap <C-g> :<C-u>CtrlPGrep<CR>

" Plug 'tomasr/molokai'
Plug 'jacoborus/tender.vim'

Plug 'vim-airline/vim-airline'

Plug 'w0rp/ale'
let g:ale_sign_column_always = 1
let g:airline#extensions#ale#enabled = 1

Plug 'vim-ruby/vim-ruby', {'for': 'ruby'}

Plug 'tpope/vim-rails'
nnoremap <C-r> :A

Plug 'slim-template/vim-slim', {'for': 'slim'}

Plug 'vim-scripts/tComment'

Plug 'tpope/vim-surround'

Plug 'kana/vim-fakeclip'

Plug 'tpope/vim-endwise'

Plug 'rizzatti/dash.vim'
nnoremap <S-k> :Dash<CR>

Plug 'editorconfig/editorconfig-vim'

Plug 'cespare/vim-toml'

Plug 'tyru/open-browser.vim'
let g:netrw_nogx = 1
nmap gx <Plug>(openbrowser-smart-search)
vmap gx <Plug>(openbrowser-smart-search)

call plug#end()


" options
"----------------------------
colorscheme tender

set clipboard+=unnamed
set ignorecase
set smartcase
set hlsearch
set incsearch
set showmatch
set whichwrap=b,s,h,l,<,>,[,]
au FileType * setlocal formatoptions-=ro

nnoremap <silent> q :<C-u>q!<CR>
nnoremap <Tab> <C-w>w
vnoremap 9 $
nnoremap 9 $
vnoremap v $
nnoremap <C-b> obinding.pry<CR><ESC>

