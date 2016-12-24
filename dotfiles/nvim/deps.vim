function! DoRemote(arg)
  UpdateRemotePlugins
endfunction

call plug#begin('~/.vim/plugged')

" Common plugins and libraries
Plug 'tpope/vim-sensible'
Plug 'vim-scripts/L9'
Plug 'tomtom/tlib_vim'
Plug 'marcweber/vim-addon-mw-utils'

Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-endwise'
Plug 'editorconfig/editorconfig-vim'

" UI
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'chriskempson/base16-vim'
Plug 'nanotech/jellybeans.vim'
Plug 'Yggdroot/indentLine'
Plug 'zeis/vim-kolor'
Plug 'flazz/vim-colorschemes'

" Git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" Project navigation
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] }
Plug 'Xuyuanp/nerdtree-git-plugin', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] }
Plug 'mhinz/vim-startify'

" Programming
Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }
Plug 'tpope/vim-rails', { 'for': 'ruby' }
Plug 'tpope/vim-bundler', { 'for': 'ruby' }
Plug 'slim-template/vim-slim'
Plug 'scrooloose/nerdcommenter'
Plug 'kchmck/vim-coffee-script', { 'for': 'coffee' }
Plug 'chase/vim-ansible-yaml'

" Autocompletion
Plug 'ervandew/supertab'

" Snippets
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'

" Searching
Plug 'rking/ag.vim'

call plug#end()
