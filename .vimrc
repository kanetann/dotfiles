" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Plug 'preservim/nerdtree'
" let NERDTreeShowHidden = 1


Plug 'jacoborus/tender.vim'


Plug 'tpope/vim-rails'


Plug 'vim-scripts/tComment'


Plug 'tyru/open-browser.vim'
let g:netrw_nogx = 1 " disable netrw's gx mapping.
nmap gx <Plug>(openbrowser-smart-search)
vmap gx <Plug>(openbrowser-smart-search)

" Plug 'dense-analysis/ale'
" let g:ale_linters = {
" \   'javascript': ['prettier', 'eslint'],
" \   'ruby': ['rubocop', 'rails_best_practices'],
" \}
" let g:ale_fixers = {
" \   'javascript': ['prettier', 'eslint'],
" \   'ruby': ['rubocop'],
" \}
" let g:ale_sign_column_always = 1
" let g:airline#extensions#ale#enabled = 1
" let g:ale_lint_on_text_changed = 'never'
" let g:ale_lint_on_enter = 0
" " let g:ale_set_loclist = 0
" " let g:ale_set_quickfix = 1
" " let g:ale_fix_on_save = 1


" Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" Plug 'junegunn/fzf.vim'
" nnoremap <expr> <C-g> ':Rg ' . expand('<cword>')
" nnoremap <expr> <C-r> ':!rg -n --hidden ' . expand('<cword>') . ' > zzz'
" nnoremap <expr> <C-p> ':Files<CR>'
" nnoremap <expr> <C-]> ':Tags ' . expand('<cword>') . '<CR>'
" let g:fzf_preview_window = ''


" Plug 'vim-scripts/vim-auto-save'
" let g:auto_save = 1  " enable AutoSave on Vim startup
" let g:auto_save_in_insert_mode = 0  " do not save while in insert mode
" let g:auto_save_silent = 1 " do not display the auto-save notification
" let g:auto_save_write_all_buffers = 1  " write all open buffers as if you would use :wa

" Plug 'ntpeters/vim-better-whitespace'
" let g:strip_whitespace_on_save=1
" let g:strip_whitespace_confirm=0

" Plug 'thinca/vim-quickrun'
" Plug 'Shougo/vimproc.vim', {'do' : 'make'}
" let g:quickrun_config = {}
" let g:quickrun_config['_'] = {
"   \ 'runner': 'vimproc',
"   \ 'runner/vimproc/updatetime' : 100,
"   \ 'outputter/buffer/opener' : "new"
"   \ }
" let g:quickrun_config['ruby.rspec'] = {
"   \ 'command': 'bundle',
"   \ 'cmdopt': 'exec rspec',
"   \ }
" augroup QuickRunRspec
"   autocmd!
"   autocmd BufEnter *_spec.rb set filetype=ruby.rspec
" augroup END
" " nnoremap <silent> <leader>q :<C-u>QuickRun<CR>
" " inoremap <silent> <leader>q <ESC>:<C-u>QuickRun<CR>
" " vnoremap <silent> <leader>q <ESC>:'<,'>QuickRun<CR>
" nnoremap <silent> <C-q> :<C-u>QuickRun<CR>
" inoremap <silent> <C-q> <ESC>:<C-u>QuickRun<CR>
" vnoremap <silent> <C-q> <ESC>:'<,'>QuickRun<CR>
Plug 'thinca/vim-quickrun'
let g:quickrun_config = {}
nnoremap <silent> <C-q> :QuickRun -mode n<CR>
vnoremap <silent> <C-q> :QuickRun -mode v<CR>

" Plug 'mechatroner/rainbow_csv'

Plug 'tribela/vim-transparent'

" Plug 'tpope/vim-fugitive'

" Plug 'slim-template/vim-slim'
" syntax enable
" filetype plugin indent on
" autocmd BufNewFile,BufRead *.slim  set filetype=slim

" Plug 'stephpy/vim-yaml'


" Plug 'APZelos/blamer.nvim'
" let g:blamer_enabled = 1
" let g:blamer_delay = 500
" let g:blamer_template = '<committer> <committer-time> <summary>'
" let g:blamer_date_format = '%Y-%m-%d %H:%M'

" Plug 'iberianpig/tig-explorer.vim'
" let g:tig_explorer_use_builtin_term=0

Plug 'editorconfig/editorconfig-vim'
" Plug 'maxmellon/vim-jsx-pretty'

" Plug 'alvan/vim-closetag'
" Plug 'tpope/vim-surround'
" Plug 'tpope/vim-endwise'
" Plug 'townk/vim-autoclose'
" Plug 'mattn/emmet-vim'

" Plug 'github/copilot.vim'




Plug 'neoclide/coc.nvim', {'branch': 'release'}

let g:coc_global_extensions = [
      \ 'coc-json',
      \ 'coc-lists',
      \ 'coc-diagnostic',
      \ 'coc-calc',
      \ 'coc-explorer',
      \ 'coc-highlight',
      \ 'coc-git',
      \ 'coc-docker',
      \ 'coc-html',
      \ 'coc-emmet',
      \ 'coc-css',
      \ 'coc-tailwindcss',
      \ 'coc-stylelint',
      \ 'coc-stylelintplus',
      \ 'coc-tsserver',
      \ 'coc-eslint',
      \ 'coc-prettier',
      \ 'coc-solargraph',
      \ 'coc-go',
      \ 'coc-golines',
      \ 'coc-sql',
      \ 'coc-graphql', ]

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1):
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Run the Code Lens action on the current line.
nmap <leader>cl  <Plug>(coc-codelens-action)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocActionAsync('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>

nnoremap <silent><nowait> <space>f :exe 'CocList files'<CR>

nnoremap <silent><nowait> <space>g :exe 'CocList -I --input='.expand('<cword>').' grep'<CR>

nnoremap <silent><nowait> <space>] :exe 'CocList --input='.expand('<cword>').' tags'<CR>

nnoremap <expr>           <C-r> ':!rg -n --hidden ' . expand('<cword>') . ' > aaa'

nnoremap <silent><nowait> <C-p> :CocList files<CR>

nnoremap <expr>           <C-g> ':CocSearch --hidden ' . expand('<cword>')

nnoremap <silent><nowait> <C-f> :CocCommand explorer<CR>

" F.A.Q · neoclide/coc.nvim Wiki https://github.com/neoclide/coc.nvim/wiki/F.A.Q#cursor-disappeared-after-exit-coclist
let g:coc_disable_transparent_cursor = 1

autocmd BufNewFile,BufRead *.erb setfiletype html



call plug#end()


" options
"----------------------------
" let mapleader = "\<Space>"

" " tmux 上で Vim を True Color (24 bit color) で使う - Qiita https://qiita.com/yami_beta/items/ef535d3458addd2e8fbb
" set termguicolors
" let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
" let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

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

nnoremap <silent> q :q!<CR>
nnoremap <silent> gf gF
vnoremap 9 $
nnoremap 9 $
vnoremap v $

autocmd BufReadPost * exe "normal! g'\""
" nnoremap <Leader>sp :<C-u>set paste<CR>

" nnoremap <Leader>t :terminal<CR>
" autocmd! FileType markdown hi! def link markdownItalic Normal
