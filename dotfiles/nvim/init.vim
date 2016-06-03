call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'vim-scripts/L9'
Plug 'tomtom/tlib_vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'chriskempson/base16-vim'
Plug 'airblade/vim-gitgutter'
Plug 'Yggdroot/indentLine'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] }
Plug 'Xuyuanp/nerdtree-git-plugin', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] }
call plug#end()

set nocompatible
set hidden

" Speed up vim
set ttyfast
set lazyredraw

" Colors
set background=dark
if has('nvim')
  color base16-monokai
else
  color peachpuff
endif

syntax on

" Show line numbers
set number

" Show whitespaces
set list
set listchars=trail:␣,space:⋅,tab:⇨\ ,extends:>,precedes:<
hi specialkey ctermfg=238, guifg=#4d4d4d
hi nontext ctermfg=238, guifg=#4d4d4d

" Color column
set colorcolumn=110
hi ColorColumn ctermbg=234, guibg=#333333

" Indent line
let g:indentLine_char='¦'

" Try to detect filetypes.
filetype on
" Enable file type detection and do language-dependent indenting.
filetype plugin indent on

" Indentetion settings
autocmd Filetype html         setlocal ts=2 sw=2 expandtab
autocmd Filetype yaml         setlocal ts=2 sw=2 expandtab
autocmd Filetype scala        setlocal ts=2 sw=2 expandtab
autocmd Filetype java         setlocal ts=2 sw=2 expandtab
autocmd Filetype python       setlocal ts=4 sw=4 expandtab
autocmd Filetype ruby         setlocal ts=2 sw=2 expandtab
autocmd Filetype eruby        setlocal ts=2 sw=2 expandtab
autocmd Filetype stylus       setlocal ts=2 sw=2 expandtab
autocmd Filetype vim          setlocal ts=2 sw=2 expandtab
autocmd Filetype json         setlocal ts=2 sw=2 expandtab
autocmd Filetype slim         setlocal ts=2 sw=2 expandtab
autocmd Filetype jade         setlocal ts=2 sw=2 expandtab
autocmd Filetype sass         setlocal ts=2 sw=2 expandtab
autocmd Filetype css          setlocal ts=2 sw=2 expandtab
autocmd Filetype mustache     setlocal ts=2 sw=2 expandtab
autocmd Filetype javascript   setlocal ts=4 sw=4 expandtab
autocmd Filetype coffeescript setlocal ts=2 sw=2 expandtab
autocmd Filetype crystal      setlocal ts=2 sw=2 expandtab
autocmd Filetype cucumber     setlocal ts=2 sw=2 expandtab

" Strip trailing spaces before save.
function! <SID>StripTrailingWhitespaces()
  " Preparation: save last search, and cursor position.
  let _s=@/
  let l = line(".")
  let c = col(".")
  " Do the business:
  %s/\s\+$//e
  " Clean up: restore previous search history, and cursor position
  let @/=_s
  call cursor(l, c)
endfunction
autocmd BufWritePre *.* :call <SID>StripTrailingWhitespaces()

" Remove blank lines at end of file
autocmd FileType * autocmd BufWritePre <buffer> :%s/\($\n\s*\)\+\%$//e

" Fast switch to command mode (without shift)
nnoremap ; :

" Enable access to clipboard
set clipboard+=unnamedplus

" Leaders
let mapleader = ','
let maplocalleader = '\\'

" Go to previous file
nnoremap <leader>b <C-^>

" Underscore as word-break
set iskeyword-=_

" CTags settings
set tags=./.tags;

" Airline
let g:airline_powerline_fonts=1

" Improve ctrlp speed.
" Silver Searcher (http://geoff.greer.fm/ag/) should be installed.
if executable('ag')
  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l -i -U --nocolor --nogroup
        \ --ignore="bin/"
        \ --ignore="*.gif"
        \ --ignore="*.png"
        \ --ignore="*.jpg"
        \ --ignore="*.jpeg"
        \ --ignore="vendor/bundle"
        \ --ignore="tmp/"
        \ --ignore="coverage/"
        \ -g ""'

  let g:ctrlp_use_caching = 1
  let g:ctrlp_max_files = 10
  let g:ctrlp_lazy_update = 0
  let g:ctrlp_brief_prompt = 1
endif

nnoremap <leader>, :CtrlP<CR>
nnoremap <leader>. :CtrlPBuffer<CR>

"if executable('ag')
  " Use Ag over Grep
"  set grepprg=ag\ --nogroup\ --nocolor
  " Ag vim plugin
  " start searching from your project root instead of the cwd
  " let g:ag_working_path_mode = 'r'
" endif

" NERDTree settings
nmap <leader>p :NERDTreeFind<CR>
nnoremap <leader>n :NERDTreeToggle<CR>
let NERDTreeIgnore=['\.vim$', '\~$', '^coverage$', '^log$', '^tmp$', '\.tags$', 'tags$', 'tags.lock$', '^\.git$', '\.swp$', '^\.svn', '^\.DS_Store$']

" NERDTree git plugin
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "~",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }
