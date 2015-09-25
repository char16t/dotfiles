execute pathogen#infect()

set textwidth=80
set enc=utf-8
set number

" Color scheme and syntax
colorscheme mustang
syntax on

" Search
set ic
set is
set hls
set smartcase " Override the 'ignorecase' if the search pattern contains upper case characters
nnoremap <silent> <Esc><Esc> :nohlsearch<CR><Esc>

" In Visual mode exec git blame with selected text
vnoremap <Leader>b :<C-U>!git blame <C-R>=expand("%:p") <CR> \| sed -n <C-R>=line("'<") <CR>,<C-R>=line("'>") <CR>p <CR>

" Search matches are always in center
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz


" Indents
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent

" Backup
set nobackup " Do not make a backup before overwriting a file
set nowritebackup " Do not make a backup before overwriting a file
set noswapfile " Don't create swapfiles

" Statusline
set laststatus=2

let mapleader = ","
"set virtualedit=onemore

" Mappings
nnoremap ; :
vnoremap ; :
inoremap jk <esc>
nnoremap <leader>w :write<cr>            " Write changes
inoremap <leader>w <esc>:write<cr>i
nnoremap <leader>q :quit<cr>             " Quit
nnoremap <leader>Q :q!<cr>               " Quit without saving changes
nnoremap <leader>n :tabnew<cr>:<C-u>e <C-R>=expand("%:p:h") . '/'<CR>
nnoremap <Leader>o :<C-u>e <C-R>=expand("%:p:h") . '/'<CR>
nnoremap <leader>s :new<cr>              " horizontal Split
nnoremap <leader>v :vnew<cr>             " Vertical split
nnoremap <leader>l :tabn<cr>             " , + L
nnoremap <leader>h :tabp<cr>             " , + H
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
map <F2> :NERDTreeToggle<CR>
nnoremap <leader>ev :tabnew $MYVIMRC<cr> " Edit my Vim configuration
nnoremap <leader>sv :source $MYVIMRC<cr> " Source my Vim configuration

" H = Home, L = End
noremap H ^
noremap L $
vnoremap L g_

" < >
vnoremap < <gv
vnoremap > >gv

" Navigation
nnoremap <Tab> gt
nnoremap <S-Tab> gT
nnoremap <Leader><left>  :<C-u>leftabove  vnew<CR>
nnoremap <Leader><right> :<C-u>rightbelow vnew<CR>
nnoremap <Leader><up>    :<C-u>leftabove  new<CR>
nnoremap <Leader><down>  :<C-u>rightbelow new<CR>
nnoremap <Space> <PageDown>

" , + 1..9 go to that tab
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt

" Navigation in insert mode
inoremap <c-k> <up>
inoremap <c-j> <down>
inoremap <c-h> <left>
inoremap <c-l> <right>

" x,u in insert mode
"inoremap <c-x> <esc>xi
inoremap <c-u> <esc>ui

" Disable some keys
inoremap <esc> <nop>
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>

" Grep
nnoremap <leader>f :execute "vimgrep /" . expand("<cword>") . "/j **"<Bar>cw<CR> 

" Git
nnoremap <leader>gc :!git<space>add<space>--all<space>.<cr><cr>:!git<space>commit<space>-m<space>""<left>
nnoremap <leader>gl :!git log<cr>
nnoremap <leader>gd :!git diff<cr>
nnoremap <leader>gs :!git status<cr>

" Auto complete {} indent and position the cursor in the middle line
inoremap {<CR> {<CR>}<Esc>O
inoremap (<CR> (<CR>)<Esc>O
inoremap [<CR> [<CR>]<Esc>O

" Move current line
"nnoremap <C-S-k> ddkP
"nnoremap <C-S-j> ddp

" Move selected lines
vnoremap <C-S-k> xkP'[V']
vnoremap <C-S-j> xp'[V']
