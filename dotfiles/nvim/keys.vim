" Fast switch to command mode (without shift)
nnoremap ; :

let mapleader = ','
let maplocalleader = '\\'

" Go to previous file
nnoremap <leader>b <C-^>

" CtrlP keybindings
nnoremap <leader>, :CtrlP<CR>
nnoremap <leader>. :CtrlPBuffer<CR>

" NERDTree keybindings
nmap <leader>p :NERDTreeFind<CR>
nnoremap <leader>n :NERDTreeToggle<CR>

" Cleanup search highlight
map <Esc><Esc> :noh<CR>

" Convenient moving around frames
nnoremap <Tab> <C-w><C-w>
