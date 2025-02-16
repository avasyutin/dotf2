packadd minpac
call minpac#init()

" Common plugins and libraries
call minpac#add('tpope/vim-sensible')
call minpac#add('vim-scripts/L9')
call minpac#add('tomtom/tlib_vim')
call minpac#add('marcweber/vim-addon-mw-utils')
call minpac#add('tmux-plugins/vim-tmux-focus-events')

" Editing
call minpac#add('Raimondi/delimitMate')
call minpac#add('tpope/vim-endwise')
call minpac#add('tpope/vim-abolish')
call minpac#add('terryma/vim-expand-region')
call minpac#add('tpope/vim-surround')
call minpac#add('godlygeek/tabular')

" UI
call minpac#add('chriskempson/base16-vim')
call minpac#add('tomasr/molokai')
call minpac#add('vague2k/vague.nvim')
call minpac#add('EdenEast/nightfox.nvim')

" call minpac#add('edkolev/tmuxline.vim')
" call minpac#add('itchyny/lightline.vim')

" Git
call minpac#add('airblade/vim-gitgutter')
call minpac#add('tpope/vim-fugitive')

" Project navigation
call minpac#add('mhinz/vim-startify')
call minpac#add('scrooloose/nerdtree')

" Programming
call minpac#add('scrooloose/nerdcommenter')
" call minpac#add('elixir-editors/vim-elixir')
call minpac#add('hashivim/vim-terraform')
call minpac#add('fatih/vim-go')

" Autocompletion
call minpac#add('ervandew/supertab')

" Snippets
call minpac#add('garbas/vim-snipmate')

" Searching
call minpac#add('mileszs/ack.vim')

function! s:need_install()
  let l:cmd = 'ls -A ~/.vim/pack/minpac/start'
  return system(l:cmd) == ''
endfunction

if s:need_install()
  call minpac#update()
endif
