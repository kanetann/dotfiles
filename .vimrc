if &compatible
  set nocompatible
endif
set runtimepath^=~/dotfiles/dein/repos/github.com/Shougo/dein.vim

call dein#begin(expand('~/.cache/dein'))
call dein#add('Shougo/dein.vim')
call dein#add('Shougo/neocomplete.vim')
call dein#add('Shougo/neosnippet.git')
call dein#add('Shougo/neosnippet-snippets')
call dein#add('honza/vim-snippets.git')
call dein#add('Shougo/unite.vim.git')
call dein#add('Shougo/vimfiler.git')
call dein#add('Shougo/vimproc.vim', {'build' : 'make'})
call dein#add('Sixeight/unite-grep.git')
call dein#add('kana/vim-fakeclip.git')
call dein#add('mattn/webapi-vim.git')
call dein#add('scrooloose/syntastic.git')
call dein#add('shanlalit/vim-autoclose.git')
call dein#add('taka84u9/vim-ref-ri.git')
call dein#add('thinca/vim-quickrun.git')
call dein#add('thinca/vim-ref.git')
call dein#add('tpope/vim-rails.git')
call dein#add('tpope/vim-surround.git')
call dein#add('tsukkee/unite-help.git')
call dein#add('tyru/open-browser.vim.git')
call dein#add('vim-ruby/vim-ruby.git')
call dein#add('vim-scripts/Align.git')
call dein#add('vim-scripts/tComment')
call dein#add('vim-scripts/wombat256.vim')
call dein#add('editorconfig/editorconfig-vim.git')
call dein#add('tsukkee/unite-tag.git')
call dein#add('ecomba/vim-ruby-refactoring.git')
call dein#add('osyo-manga/vim-anzu.git')
call dein#add('majutsushi/tagbar.git')
call dein#add('ujihisa/unite-colorscheme.git')
call dein#add('vim-scripts/Colour-Sampler-Pack.git')
call dein#add('osyo-manga/vim-over.git')
call dein#add('brookhong/DBGPavim.git')
call dein#add('tpope/vim-fugitive')
call dein#add('vim-scripts/RST-Tables.git')
call dein#add('fundon/vim-mou.git')
call dein#add('rcyrus/snipmate-snippets-rubymotion.git')
call dein#add('rizzatti/funcoo.vim')
call dein#add('rizzatti/dash.vim')
call dein#add('tpope/vim-endwise.git')
call dein#add('nelstrom/vim-textobj-rubyblock.git')
call dein#add('vim-scripts/matchit.zip.git')
call dein#add('kana/vim-textobj-user.git')
call dein#add('chriskempson/vim-tomorrow-theme.git')
call dein#add('AndrewRadev/linediff.vim.git')
call dein#add('sickill/vim-monokai.git')
call dein#add('pangloss/vim-javascript.git')
call dein#add('alpaca-tc/alpaca_tags.git')
call dein#add('kannokanno/previm.git')
call dein#add('AndrewRadev/switch.vim.git')
call dein#add('wesleyche/SrcExpl.git')
call dein#add('airblade/vim-gitgutter.git')
call dein#add('kchmck/vim-coffee-script')
call dein#add('slim-template/vim-slim')
call dein#add('mustache/vim-mustache-handlebars')
call dein#add('Shougo/neomru.vim')
call dein#end()

if dein#check_install()
  call dein#install()
endif

filetype plugin indent on

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
source ~/dotfiles/vimrcfiles/alpaca_tags.vim
source ~/dotfiles/vimrcfiles/previm.vim
source ~/dotfiles/vimrcfiles/switch.vim
source ~/dotfiles/vimrcfiles/vim-gitgutter.vim
source ~/dotfiles/vimrcfiles/vim-coffee-script.vim
