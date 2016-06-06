function! DoRemote(arg)
  UpdateRemotePlugins
endfunction

call plug#begin('~/.vim/plugged')

" Common plugins and libraries
Plug 'tpope/vim-sensible'
Plug 'vim-scripts/L9'
Plug 'tomtom/tlib_vim'

" UI
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'chriskempson/base16-vim'
Plug 'nanotech/jellybeans.vim'
Plug 'Yggdroot/indentLine'

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
Plug 'scrooloose/nerdcommenter'

" Autocompletion
Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }

call plug#end()
