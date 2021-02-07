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
  set guioptions-=m "remove menu bar
  set guioptions-=T "remove toolbar
  set guioptions-=r "remove right-hand scroll bar
  set guioptions-=L "remove left-hand scroll bar

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
  set termguicolors
  " color base16-monokai
  color molokai

  " Nice red color for misspelled words
  let &t_Cs = "\e[4:3m"
  let &t_Ce = "\e[4:0m"
  hi SpellBad cterm=undercurl gui=undercurl ctermbg=NONE ctermfg=160

  " Color column (position depends on file types)
  " hi ColorColumn ctermbg=236
  " hi ColorColumn ctermbg=220

  " " Set background for selected text in Visual Bode
  " hi Visual ctermbg=238

  " " Set colors for whitespace marks
  " hi specialkey ctermfg=238
  " hi nontext ctermfg=238
endif

" Show line numbers
set number
set nornu

" Whitespaces look and feel
set listchars=trail:␣,space:⋅,tab:⇨\ ,extends:>,precedes:<

" Search settings.
set showmatch
set hlsearch
set incsearch
set ignorecase

" Better command-line completion.
set wildmenu

" Don't wrap lines.
set nowrap

" Mouse
" ttymouse important to use inside tmux
set ttymouse=xterm2
set mouse=a
