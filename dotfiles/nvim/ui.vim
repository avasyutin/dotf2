" Syntax highlighting
syntax on

" Status line
set statusline=%f%m%r%h%w
set statusline+=\ \ %{fugitive#statusline()}
set statusline+=%=%y
set statusline+=\ \ %{&fileencoding?&fileencoding:&encoding}
set statusline+=[%{&fileformat}\]
set statusline+=\ \ %3p%%
set statusline+=\ %4l:%L
set statusline+=\ :\ %3c

" Colorscheme
if has('gui_running')
  set guioptions-=m  "remove menu bar
  set guioptions-=T  "remove toolbar
  set guioptions-=r  "remove right-hand scroll bar
  set guioptions-=L  "remove left-hand scroll bar

  set background=dark
  color base16-monokai

  if IsMac()
    set guifont=Fira\ Code\ Light:h12
    set linespace=2
  else
    set guifont=Fira\ Code\ Retina\ 9
  endif
else
  " Only for HighColor schemes.
  " set termguicolors
  color molokai
endif

" Color column (position depends on file types)
hi ColorColumn ctermbg=234, guibg=#333333

" Netrw settings
let g:netrw_liststyle=1
let g:netrw_banner=0
let g:netrw_list_hide= '\.git\/$,\._gems\/$,\.bundle\/$,\.tags$,\.swp$,\.DS_Store$'

" Show line numbers
set number
set nornu

" Whitespaces look and feel
set listchars=trail:␣,space:⋅,tab:⇨\ ,extends:>,precedes:<
hi specialkey ctermfg=238, guifg=#4d4d4d
hi nontext ctermfg=238, guifg=#4d4d4d

" Search settings.
set showmatch
set hlsearch
set incsearch
set ignorecase

" Better command-line completion.
set wildmenu

" Don't wrap lines.
set nowrap
