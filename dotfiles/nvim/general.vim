set hidden

set encoding=utf-8
scriptencoding utf-8

if executable('zsh')
  set shell=zsh
endif

" Speed up vim
set ttyfast
set lazyredraw

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
set clipboard+=unnamedplus

" Underscore as word-break
set iskeyword-=_

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

" Blank line at end of file.
set eol
