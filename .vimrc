" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
nnoremap <C-f> :<C-u>NERDTreeToggle<CR>
" nnoremap <C-n> :<C-u>NERDTreeFind<CR>

" Plug 'ctrlpvim/ctrlp.vim'
" let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
" let g:ctrlp_max_height = 25
" let g:ctrlp_lazy_update = 100

" Plug 'ivalkeen/vim-ctrlp-tjump'
" nnoremap <c-]> :CtrlPtjump<cr>
" vnoremap <c-]> :CtrlPtjumpVisual<cr>
" let g:ctrlp_tjump_only_silent = 1

" Plug 'ompugao/ctrlp-grep'
" nnoremap <C-g> :<C-u>CtrlPGrep<CR>

" Plug 'tomasr/molokai'
Plug 'jacoborus/tender.vim'

Plug 'vim-airline/vim-airline'

" Plug 'w0rp/ale'
" let g:ale_sign_column_always = 1
" let g:airline#extensions#ale#enabled = 1

Plug 'vim-ruby/vim-ruby', {'for': 'ruby'}

Plug 'tpope/vim-rails'
nnoremap <C-r> :R

Plug 'slim-template/vim-slim', {'for': 'slim'}

Plug 'vim-scripts/tComment'

Plug 'tpope/vim-surround'

Plug 'kana/vim-fakeclip'

Plug 'tpope/vim-endwise'

Plug 'rizzatti/dash.vim'
" nnoremap <C-k> :Dash<CR>

Plug 'editorconfig/editorconfig-vim'

Plug 'cespare/vim-toml'

Plug 'tyru/open-browser.vim'
let g:netrw_nogx = 1
nmap gx <Plug>(openbrowser-smart-search)
vmap gx <Plug>(openbrowser-smart-search)

" Plug 'kanetann/vim-speeddating'

" Plug 'vim-syntastic/syntastic'
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" let g:syntastic_always_populate_loc_list = 0
" let g:syntastic_auto_loc_list = 0
" let g:syntastic_check_on_open = 0
" let g:syntastic_check_on_wq = 0
" let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': ['ruby', 'javascript'] }
" let g:syntastic_ruby_checkers = ['rubocop']
" let g:syntastic_javascript_checkers = ['eslint']

Plug 'w0rp/ale'
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'ruby': ['rubocop', 'rails_best_practices'],
\}
let g:ale_sign_column_always = 1
let g:airline#extensions#ale#enabled = 1
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0
" let g:ale_set_loclist = 0
" let g:ale_set_quickfix = 1

" Plug 'rking/ag.vim'
" nnoremap <expr> <C-g> ':Ag ' . expand('<cword>')

" Plug 'mileszs/ack.vim'
" let g:ackprg = 'ag --vimgrep --smart-case'
" " nnoremap <expr> <C-g> ':Ack ' . expand('<cword>')

" Plug 'mhinz/vim-grepper'
" nnoremap <expr> <C-g> ':GrepperAg ' . expand('<cword>')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all'  }
Plug 'junegunn/fzf.vim'
nnoremap <expr> <C-g> ':Rg ' . expand('<cword>')
nnoremap <expr> <C-p> ':Files<CR>'
let $FZF_DEFAULT_OPTS = '--height 50% --layout=reverse --border'

" command! -bang -nargs=? -complete=dir Files
"     \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)
"
" command! -bang -nargs=* Rg
"   \ call fzf#vim#grep(
"   \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
"   \   fzf#vim#with_preview(), <bang>0)
"
" function! RipgrepFzf(query, fullscreen)
"   let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case %s || true'
"   let initial_command = printf(command_fmt, shellescape(a:query))
"   let reload_command = printf(command_fmt, '{q}')
"   let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
"   call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
" endfunction
"
" command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)


Plug 'thinca/vim-quickrun'
let g:quickrun_config = {
      \   "_" : {
      \       "outputter/buffer/split" : ":botright 16sp",
      \   }
      \}
nnoremap <silent> <C-q> :<C-u>QuickRun<CR>
inoremap <silent> <C-q> <ESC>:<C-u>QuickRun<CR>

Plug 'junegunn/vim-easy-align'
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

Plug 'kannokanno/previm'
" nnoremap <C-m> :PrevimOpen<CR>

Plug 'iberianpig/tig-explorer.vim'
nnoremap <silent> <C-e> :<C-u>TigOpenCurrentFile<CR>

Plug 'plasticboy/vim-markdown'
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_no_default_key_mappings = 1

Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'
let g:vim_jsx_pretty_colorful_config = 1

" Plug 'mxw/vim-jsx'
" Plug 'othree/yajs.vim'
" Plug 'othree/es.next.syntax.vim'

Plug 'cohama/lexima.vim'

" Plug 'vim-scripts/vim-auto-save'
" let g:auto_save = 1  " enable AutoSave on Vim startup
" let g:auto_save_in_insert_mode = 0  " do not save while in insert mode
" " let g:auto_save_silent = 1  " do not display the auto-save notification

call plug#end()


" options
"----------------------------
let mapleader = "\<Space>"

colorscheme tender

set clipboard+=unnamed
set ignorecase
set smartcase
set hlsearch
set incsearch
set nobackup
set noswapfile
set showmatch
set whichwrap=b,s,h,l,<,>,[,]
au FileType * setlocal formatoptions-=ro

nnoremap <silent> q :<C-u>q!<CR>
nnoremap <Tab> <C-w>w
vnoremap 9 $
nnoremap 9 $
vnoremap v $
" nnoremap <C-b> ibinding.pry<CR><ESC>:w<CR>
" nnoremap <C-e> <C-e>
" nnoremap <C-h> <C-h>
" nnoremap <C-m> <C-m>
" nnoremap <C-n> <C-n>
" nnoremap <C-q> <C-q>
" nnoremap <C-s> <C-s>
nnoremap <C-y> <C-y>

autocmd BufReadPost * exe "normal! g'\""
nnoremap <Leader>sp :<C-u>set paste<CR>
