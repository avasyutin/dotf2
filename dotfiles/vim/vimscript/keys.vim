" Fast switch to command mode (without shift)
nnoremap ; :

let mapleader = ','

" Go to previous file
nnoremap <leader>b <C-^>

" For Neovim we use custom plugins and keys, just check to not conflict
" with Neovim lua config
if ! has('nvim')
  " Quick search
  nmap <leader>g :Ack <cword><CR>
  vmap <leader>g :call AckFromSelection()<CR>

  " NERDTree keybindings
  nmap - :NERDTreeSmart<CR>

  " FZF keybindings
  nnoremap <leader>, :FZF<CR>
  nnoremap <silent> <leader>. :call fzf#run({
        \ 'source': reverse(FZFBuflist()),
        \ 'sink': function('FZFBufopen'),
        \ 'options': '+m',
        \ 'down': len(FZFBuflist()) + 2
        \ })<CR>
endif

" Toggle folding
nmap <Space> za

noremap <LeftRelease> "+y<LeftRelease>
