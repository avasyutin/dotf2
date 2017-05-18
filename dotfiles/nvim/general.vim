set hidden

set encoding=utf-8
scriptencoding utf-8

if executable('zsh')
  set shell=zsh
endif

" Speed up vim
set ttyfast
set lazyredraw
set synmaxcol=150
set timeoutlen=1000
set ttimeoutlen=0
set regexpengine=1

" Don't beep.
set visualbell
set noerrorbells

" Backup and swap settings
set backupdir=$HOME/.vimtmp
set directory=$HOME/.vimtmp

" Exclude files or directories.
set wildignore=.svn,CVS,.git,.hg,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif

" Automatically save before commands like :next and :make
set autowriteall

" Automatically refresh any unchanged files
set autoread

" CTags tags file
set tags=./.tags;

" Enable access to clipboard
set clipboard^=unnamed,unnamedplus

" Underscore as word-break (it usefull but breaks syntax highlighting for ruby)
" set iskeyword-=_

" Strip trailing spaces before save.
autocmd BufWritePre *.* :call StripTrailingWhitespaces()

" Remove blank lines at end of file
autocmd FileType * autocmd BufWritePre <buffer> :%s/\($\n\s*\)\+\%$//e

" Blank line at end of file.
set eol

" Generate .tags file for ruby/rails projects.
command RipperTagsGen call RipperTagsGen()

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
