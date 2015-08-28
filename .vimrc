set enc=utf-8
set number
set noswapfile
set nobackup

colorscheme Tomorrow-Night-Bright
syntax on

" Indent commands
com SpaceIndent :set tabstop=4| set shiftwidth=4| set expandtab
com TabIndent :set tabstop=8| set shiftwidth=8| set noexpandtab
" 4 space indent by default
SpaceIndent

set incsearch
set hlsearch

set autoindent

set wildmenu
set laststatus=2
set statusline=\ %f%m%r%h%w\ %=%({%{&ff}\|%{(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\")}%k\|%Y}%)\ %([%l,%v][%p%%]\ %)
