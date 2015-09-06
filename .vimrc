set enc=utf-8
set number

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
nnoremap <leader>w :write<cr>            " Write
nnoremap <leader>q :quit<cr>             " Quit
nnoremap <leader>n :tabnew<cr>           " open New tab
nnoremap <leader>s :new<cr>              " horizontal Split
nnoremap <leader>v :vnew<cr>             " Vertical split
nnoremap <leader>l :tabn<cr>             " , + L
nnoremap <leader>h :tabp<cr>             " , + H
nnoremap <leader>ev :tabnew $MYVIMRC<cr> " Edit my Vim configuration
nnoremap <leader>sv :source $MYVIMRC<cr> " Source my Vim configuration

" Disable some keys
inoremap <esc> <nop>
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>
