if !1 | finish | endif

if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif
call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'Shougo/neocomplete.git'
NeoBundle 'Shougo/neosnippet.git'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'honza/vim-snippets.git'
NeoBundle 'Shougo/unite.vim.git'
NeoBundle 'Shougo/vimfiler.git'
NeoBundle 'Shougo/vimproc.git'
NeoBundle 'Sixeight/unite-grep.git'
NeoBundle 'kana/vim-fakeclip.git'
NeoBundle 'mattn/webapi-vim.git'
NeoBundle 'scrooloose/syntastic.git'
NeoBundle 'shanlalit/vim-autoclose.git'
NeoBundle 'taka84u9/vim-ref-ri.git'
NeoBundle 'thinca/vim-quickrun.git'
NeoBundle 'thinca/vim-ref.git'
NeoBundle 'tpope/vim-rails.git'
NeoBundle 'tpope/vim-surround.git'
NeoBundle 'tsukkee/unite-help.git'
NeoBundle 'tyru/open-browser.vim.git'
NeoBundle 'vim-ruby/vim-ruby.git'
NeoBundle 'vim-scripts/Align.git'
NeoBundle 'vim-scripts/tComment'
NeoBundle 'vim-scripts/wombat256.vim'
NeoBundle 'editorconfig/editorconfig-vim.git'
NeoBundle 'tsukkee/unite-tag.git'
" NeoBundle 'tsaleh/vim-matchit.git'
NeoBundle 'ecomba/vim-ruby-refactoring.git'
NeoBundle 'osyo-manga/vim-anzu.git'
NeoBundle 'majutsushi/tagbar.git'
NeoBundle 'ujihisa/unite-colorscheme.git'
NeoBundle 'vim-scripts/Colour-Sampler-Pack.git'
NeoBundle 'osyo-manga/vim-over.git'
NeoBundle 'brookhong/DBGPavim.git'
NeoBundle 'tpope/vim-fugitive'
" NeoBundle 'gregsexton/gitv.git'
NeoBundle 'vim-scripts/RST-Tables.git'
" NeoBundle 'mhinz/vim-startify.git'
NeoBundle 'fundon/vim-mou.git'
NeoBundle 'rcyrus/snipmate-snippets-rubymotion.git'
NeoBundle 'rizzatti/funcoo.vim'
NeoBundle 'rizzatti/dash.vim'
NeoBundle 'tpope/vim-endwise.git'
NeoBundle 'gcmt/wildfire.vim.git'
NeoBundle 'nelstrom/vim-textobj-rubyblock.git'
NeoBundle 'vim-scripts/matchit.zip.git'
NeoBundle 'kana/vim-textobj-user.git'
NeoBundle 'chriskempson/vim-tomorrow-theme.git'
NeoBundle 'AndrewRadev/linediff.vim.git'
NeoBundle 'sickill/vim-monokai.git'
NeoBundle 'pangloss/vim-javascript.git'
NeoBundle 'alpaca-tc/alpaca_tags.git'
NeoBundle 'kannokanno/previm.git'
NeoBundle 'AndrewRadev/switch.vim.git'

NeoBundle 'wesleyche/SrcExpl.git'
NeoBundle 'airblade/vim-gitgutter.git'

NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'slim-template/vim-slim'
NeoBundle 'mustache/vim-mustache-handlebars'

call neobundle#end()

filetype plugin indent on
NeoBundleCheck

source ~/dotfiles/vimrcfiles/anzu.vim
source ~/dotfiles/vimrcfiles/basic.vim
source ~/dotfiles/vimrcfiles/filetype.vim
source ~/dotfiles/vimrcfiles/neocomplete.vim
source ~/dotfiles/vimrcfiles/neosnippet.vim
source ~/dotfiles/vimrcfiles/open-browser.vim
source ~/dotfiles/vimrcfiles/quickrun.vim
source ~/dotfiles/vimrcfiles/rails.vim
source ~/dotfiles/vimrcfiles/syntastic.vim
source ~/dotfiles/vimrcfiles/unite.vim
source ~/dotfiles/vimrcfiles/vimfiler.vim
source ~/dotfiles/vimrcfiles/tagbar.vim
source ~/dotfiles/vimrcfiles/vim-over.vim
source ~/dotfiles/vimrcfiles/DBGPavim.vim
source ~/dotfiles/vimrcfiles/RST-Tables.vim
source ~/dotfiles/vimrcfiles/vim-fugitive.vim
source ~/dotfiles/vimrcfiles/vim-mou.vim
source ~/dotfiles/vimrcfiles/dash.vim
source ~/dotfiles/vimrcfiles/matchit.vim
source ~/dotfiles/vimrcfiles/wildfire.vim
source ~/dotfiles/vimrcfiles/alpaca_tags.vim
source ~/dotfiles/vimrcfiles/previm.vim
source ~/dotfiles/vimrcfiles/switch.vim
source ~/dotfiles/vimrcfiles/vim-gitgutter.vim
source ~/dotfiles/vimrcfiles/vim-coffee-script.vim
