" Airline
let g:airline_powerline_fonts=1
let g:airline_enable_fugitive=1

" CtrlP settings
if executable('ag')
  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l -i -U --nocolor --nogroup --hidden
    \ --ignore="bin/"
    \ --ignore="*.gif"
    \ --ignore="*.png"
    \ --ignore="*.jpg"
    \ --ignore="*.jpeg"
    \ --ignore="*.svg"
    \ --ignore="*.eot"
    \ --ignore="*.woff"
    \ --ignore="*.ttf"
    \ --ignore="*.otf"
    \ --ignore="node_modules"
    \ --ignore="vendor/bundle"
    \ --ignore="vendor/assets"
    \ --ignore="tmp/"
    \ --ignore="coverage/"
    \ --ignore=".git/"
    \ --ignore="._gems/"
    \ --ignore="._bundle/"
    \ --ignore=".DS_Store/"
    \ --ignore="public/external"
    \ --ignore="public/builder"
    \ --ignore="public/packs"
    \ --ignore="public/packs-test"
    \ -g ""'

  let g:ctrlp_use_caching = 1
  let g:ctrlp_max_files = 10
  let g:ctrlp_lazy_update = 0
  let g:ctrlp_brief_prompt = 1
endif

" NERDTree settings
let NERDTreeShowHidden = 1
let NERDTreeIgnore=['\~$', '^coverage$', '^log$', '\.tags$', 'tags.lock$', '^\.git$', '\.swp$', '^\.svn', '^\.DS_Store$']
let g:NERDTreeIndicatorMapCustom = {
  \ "Modified"  : "~",
  \ "Staged"    : "+",
  \ "Untracked" : "✭",
  \ "Renamed"   : "➜",
  \ "Unmerged"  : "-",
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
let g:startify_change_to_vcs_root = 1
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

" Supertab
let g:SuperTabDefaultCompletionType = '<c-n>' " To prevent navigate the completion menu from bottom to top

" Ack
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
end
cnoreabbrev Ack Ack!

" vim-expand-region settings for ruby
call expand_region#custom_text_objects('ruby', {
      \ 'im' :0,
      \ 'am' :0,
      \ })

" Taglist
let g:Tlist_Use_Right_Window = 1
let g:Tlist_WinWidth = 45
let g:Tlist_GainFocus_On_ToggleOpen = 1
let g:Tlist_Close_On_Select = 1
