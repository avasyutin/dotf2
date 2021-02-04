" NERDTree settings
let NERDTreeShowHidden = 1
let NERDTreeIgnore=['\~$', '^coverage$', '^log$', '\.tags$', 'tags.lock$', '^\.git$', 'node_modules', 'tmp', '.DS_Store']
let NERDTreeQuitOnOpen = 1
let NERDTreeAutoDeleteBuffer = 1

" Ack
let g:ackprg = 'rg -s -F --vimgrep'
" cnoreabbrev Ack Ack!

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
      \ ['', "   Vim is charityware. Please read ':help Uganda'.", '']

" NERDCommenter
let g:NERDSpaceDelims = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Supertab
" To prevent navigate the completion menu from bottom to top
let g:SuperTabDefaultCompletionType = '<c-n>'

" vim-expand-region
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

" FZF plugin for Ubuntu WSL
if IsWSL()
  source /usr/share/doc/fzf/examples/fzf.vim
endif

" FZF molokai colors
let $FZF_DEFAULT_OPTS='
      \ --color fg:252,bg:233,hl:67,fg+:252,bg+:235,hl+:81
      \ --color info:144,prompt:161,spinner:135,pointer:135,marker:118
      \ '

" Terraform
let g:terraform_align=1
let g:terraform_fmt_on_save=1

" Snipmate
let g:snipMate = { 'snippet_version' : 1 }
