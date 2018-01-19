function! DoRemote(arg)
  UpdateRemotePlugins
endfunction

call plug#begin('~/.vim/plugged')

" Common plugins and libraries
Plug 'tpope/vim-sensible'
Plug 'vim-scripts/L9'
Plug 'tomtom/tlib_vim'
Plug 'marcweber/vim-addon-mw-utils'
Plug 'tmux-plugins/vim-tmux-focus-events'

Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-endwise'
Plug 'terryma/vim-expand-region'
Plug 'tpope/vim-surround'

" UI
Plug 'chriskempson/base16-vim'

" Git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" Project navigation
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mhinz/vim-startify'
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] }

" Programming
Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }
Plug 'slim-template/vim-slim'
Plug 'scrooloose/nerdcommenter'
Plug 'kchmck/vim-coffee-script', { 'for': 'coffee' }

" Autocompletion
Plug 'ervandew/supertab'

" Snippets
Plug 'garbas/vim-snipmate'

" Searching
Plug 'mileszs/ack.vim'

call plug#end()

if empty(glob('~/.vim/autoload/plug.vim'))
  silent execute '!curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall
endif
