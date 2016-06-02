call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'chriskempson/base16-vim'
call plug#end()

" Colors
set background=dark
if has('nvim')
  color base16-monokai
else
  color peachpuff
endif

" Show line numbers
set number

" Airline
let g:airline_powerline_fonts=1
