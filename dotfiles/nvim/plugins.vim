" Indent line
let g:indentLine_char='¦'

" Airline
let g:airline_powerline_fonts=1

" CtrlP settings
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

" NERDTree settings
let NERDTreeIgnore=['\~$', '^coverage$', '^log$', '^tmp$', '\.tags$', 'tags$', 'tags.lock$', '^\.git$', '\.swp$', '^\.svn', '^\.DS_Store$']
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

" Startify settings.
let g:startify_custom_header =
  \ map(split(system('fortune | cowsay -f tux'), '\n'), '"   ". v:val') + ['','']
let g:startify_files_number = 8
let g:startify_relative_path = 1
let g:startify_list_order = [
  \ ['   LRU within this dir:'],
  \ 'dir',
  \ ['   LRU:'],
  \ 'files',
  \ ['   Sessions:'],
  \ 'sessions',
  \ ['   Bookmarks:'],
  \ 'bookmarks',
  \ ]
let g:startify_skiplist = [
  \ 'COMMIT_EDITMSG',
  \ 'bundle/.*/doc',
  \ '/data/repo/neovim/runtime/doc',
  \ '/Users/mhi/local/vim/share/vim/vim74/doc',
  \ ]
let g:startify_custom_footer =
  \ ['', "   Vim is charityware. Please read ':help uganda'.", '']

" NERDCommenter
let g:NERDSpaceDelims = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Deoplete autocomplete
if has('nvim')
  let g:deoplete#enable_at_startup = 1
endif
