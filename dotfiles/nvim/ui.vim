" Colorscheme
set background=dark
if has('nvim')
  " Only for HighColor schemes.
  " set termguicolors
  color molokai
  let g:airline_theme='molokai'
else
  color molokai
  let g:airline_theme='molokai'
endif

" Syntax highlighting
syntax on

" Show line numbers
set number
set nornu

" Whitespaces look and feel
set listchars=trail:␣,space:⋅,tab:⇨\ ,extends:>,precedes:<
hi specialkey ctermfg=238, guifg=#4d4d4d
hi nontext ctermfg=238, guifg=#4d4d4d

" Color column (position depends on file types)
hi ColorColumn ctermbg=234, guibg=#333333

" Search settings.
set showmatch
set hlsearch
set incsearch
set ignorecase

" Better command-line completion.
set wildmenu

" Don't wrap lines.
set nowrap
