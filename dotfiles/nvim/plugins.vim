" NERDTree settings
let NERDTreeShowHidden = 1
let NERDTreeIgnore=['\~$', '^coverage$', '^log$', '\.tags$', 'tags.lock$', '^\.git$']
let NERDTreeQuitOnOpen = 1
let NERDTreeAutoDeleteBuffer = 1

" Ack
let g:ackprg = 'rg --vimgrep'
cnoreabbrev Ack Ack!

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

" Settings for ruby for vim-expand-region
let g:expand_region_text_objects_ruby = {
      \ 'ie': 0,
      \ 'ip': 0,
      \ 'iw': 0,
      \ 'iB': 1,
      \ 'il': 0,
      \ 'iW': 0,
      \ 'i''': 0,
      \ 'ib': 1,
      \ 'i]': 1,
      \ 'i"': 0,
      \ 'im': 0,
      \ 'am': 0
      \ }
