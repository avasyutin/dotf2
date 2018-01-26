" Fast switch to command mode (without shift)
nnoremap ; :

let mapleader = ','
let maplocalleader = '\\'

" Go to previous file
nnoremap <leader>b <C-^>

" CtrlP keybindings
nnoremap <leader>, :CtrlP<CR>
nnoremap <leader>. :CtrlPBuffer<CR>
nnoremap <leader>r :CtrlPTag<CR>

" Quick ag search
nmap <leader>g :Ack -Q <cword><CR>
vmap <leader>g :call AckFromSelection()<CR>
