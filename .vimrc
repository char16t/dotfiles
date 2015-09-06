set enc=utf-8
set number

" Color scheme and syntax
colorscheme Tomorrow-Night-Bright
syntax on

" Backup
set nobackup " Do not make a backup before overwriting a file
set nowritebackup " Do not make a backup before overwriting a file
set noswapfile " Don't create swapfiles

let mapleader = ","
set virtualedit=onemore

" Mappings
inoremap jk <esc>
nnoremap <leader>w :write<cr>            " Write changes
inoremap <leader>w <esc>:write<cr>i
nnoremap <leader>q :quit<cr>             " Quit
nnoremap <leader>n :tabnew<cr>           " open New tab
nnoremap <leader>s :new<cr>              " horizontal Split
nnoremap <leader>v :vnew<cr>             " Vertical split
nnoremap <leader>l :tabn<cr>             " , + L
nnoremap <leader>h :tabp<cr>             " , + H
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <leader>ev :tabnew $MYVIMRC<cr> " Edit my Vim configuration
nnoremap <leader>sv :source $MYVIMRC<cr> " Source my Vim configuration

" Navigation in insert mode
inoremap <c-k> <up>
inoremap <c-j> <down>
inoremap <c-h> <left>
inoremap <c-l> <right>

" Disable some keys
inoremap <esc> <nop>
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>
