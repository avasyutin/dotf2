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

" Switch between nu/rnu
nnoremap <leader>rr :call RnuToggle()<CR>

" Quick ag search
nmap <leader>g :Ag!<CR>

" Quick save and exit!
nmap <leader>qq :wqa!<CR>

" Convenient moving around frames
nnoremap <Tab> <C-w><C-w>
