" Fast switch to command mode (without shift)
nnoremap ; :

let mapleader = ','

" Go to previous file
nnoremap <leader>b <C-^>

" FZF keybindings
nnoremap <leader>, :FZF<CR>
nnoremap <silent> <leader>. :call fzf#run({
      \ 'source': reverse(FZFBuflist()),
      \ 'sink': function('FZFBufopen'),
      \ 'options': '+m',
      \ 'down': len(FZFBuflist()) + 2
      \ })<CR>

" Quick search
nmap <leader>g :Ack <cword><CR>
vmap <leader>g :call AckFromSelection()<CR>

" NERDTree keybindings
nmap - :NERDTreeSmart<CR>

" Toggle folding
nmap <Space> za
