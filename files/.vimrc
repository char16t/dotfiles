call plug#begin('~/.vim/bundle')
Plug 'nanotech/jellybeans.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'bling/vim-airline'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-unimpaired'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'nanotech/jellybeans.vim'
Plug 'mileszs/ack.vim'
Plug 'tpope/vim-fugitive'
Plug 'bling/vim-airline'
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-dispatch'
Plug 'majutsushi/tagbar'
Plug 'godlygeek/tabular'
Plug 'mbbill/undotree'
Plug 'othree/html5.vim'
Plug 'digitaltoad/vim-jade'
Plug 'ervandew/supertab'
Plug 'editorconfig/editorconfig-vim'
Plug 'fatih/vim-go'
Plug 'jimenezrick/vimerl'
Plug 'wting/rust.vim'
Plug '2072/PHP-Indenting-for-VIm'
Plug 'eagletmt/ghcmod-vim'
Plug 'raichoo/haskell-vim'
Plug 'elzr/vim-json'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'moll/vim-node'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-easytags'
Plug 'Valloric/MatchTagAlways'
Plug 'plasticboy/vim-markdown'
Plug 'tpope/vim-git'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-endwise'
Plug 'guns/vim-clojure-static'
Plug 'tpope/vim-leiningen'
Plug 'tpope/vim-classpath'
Plug 'tpope/vim-fireplace'
Plug 'venantius/vim-eastwood'
Plug 'vim-scripts/paredit.vim'
Plug 'wlangstroth/vim-racket'
Plug 'stephpy/vim-yaml'
Plug 'chrisbra/csv.vim'
Plug 'ekalinin/Dockerfile.vim'
call plug#end()

" Make Vim behave in a more useful way
set nocompatible

" Syntax highlighting
syntax on

" File type detection
filetype on

" Encoding fixes
scriptencoding utf-8
set encoding=utf-8

" Color scheme
set t_Co=256
colorscheme jellybeans

" Leader and LocalLeader keys
let mapleader = " "
let maplocalleader = ","

" How many entries may be stored in history
set history=1000

" Influences the working of <BS>, <Del>, CTRL-W and CTRL-U in Insert mode
set backspace=indent,eol,start

" Use visual bell instead of beeping
set visualbell

" Enable the use of the mouse
set mouse=a

" The screen will not be redrawn while executing macros, registers and 
" other commands that have not been typed
set lazyredraw

" Highlight the screen line of the cursor with CursorLine
set cursorline

" When off a buffer is unloaded when it is abandoned. When on a buffer becomes 
" hidden when it is abandoned.
set hidden

" When off, all folds are open (set foldenable / set nofoldenable)
set nofoldenable

" When on, lines longer than the width of the window will wrap and displaying 
" continues on the next line. When off lines will not wrap and only part of long 
" lines will be displayed. (set wrap / set nowrap)
set nowrap

" Print the line number in front of each line
set number

" When there is a previous search pattern, highlight all its matches
set hlsearch

" Press <Esc><Esc> for nohlsearch
nnoremap <silent> <Esc><Esc> :nohlsearch<CR><Esc>

" While typing a search command, show where the pattern, as it was typed so 
" far, matches.
set incsearch

" Ignore case in search patterns.  Also used when searching in the tags file
set ignorecase

" Override the 'ignorecase' if the search pattern contains upper case characters
set smartcase

" Do not make a backup before overwriting a file
set nobackup 

" Do not make a backup before overwriting a file
set nowritebackup

" Don't create swapfiles
set noswapfile

" The value of this option influences when the last window will have a status line:
"  0: never
"  1: only if there are at least two windows
"  2: always
set laststatus=2

" In Insert mode: Use the appropriate number of spaces to insert a <Tab>
" Spaces are used in indents with the '>' and '<' commands and when 
" 'autoindent' is on
set expandtab

" Copy indent from current line when starting a new line (typing <CR> in Insert mode 
" or when using the "o" or "O" command).
set autoindent

" Do smart autoindenting when starting a new line.  Works for C-like programs, but 
" can also be used for other languages.
set smartindent

" Number of spaces that a <Tab> in the file counts for
set tabstop=4

" Number of spaces to use for each step of (auto)indent
set shiftwidth=4

" 80 chars/line
set textwidth=0
if exists('&colorcolumn')
    set colorcolumn=80
endif

" Disable automatic formatting
autocmd FileType * setlocal formatoptions-=t 
autocmd FileType * setlocal formatoptions-=c 
autocmd FileType * setlocal formatoptions-=r 
autocmd FileType * setlocal formatoptions-=o 
autocmd FileType * setlocal formatoptions-=q 
autocmd FileType * setlocal formatoptions-=w
autocmd FileType * setlocal formatoptions-=a
autocmd FileType * setlocal formatoptions-=n
autocmd FileType * setlocal formatoptions-=2
autocmd FileType * setlocal formatoptions-=v
autocmd FileType * setlocal formatoptions-=b
autocmd FileType * setlocal formatoptions-=l
autocmd FileType * setlocal formatoptions-=m
autocmd FileType * setlocal formatoptions-=M
autocmd FileType * setlocal formatoptions-=B
autocmd FileType * setlocal formatoptions-=1

" Persistent Undo
if has('persistent_undo')
    silent !mkdir ~/.vim/backups > /dev/null 2>&1
    set undodir=~/.vim/backups
    set undofile
endif

" Search matches are always in center
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz

" Allows you to enter sudo pass and save the file
" when you forgot to open your file with sudo
cmap w!! %!sudo tee > /dev/null %

" Mappings
nnoremap ; :
vnoremap ; :
nnoremap ; :
vnoremap ; :
inoremap jk <esc>
nnoremap <leader>w :write<cr>
nnoremap <leader>q :quit<cr>
nnoremap <leader>Q :q!<cr> 
nnoremap <leader>n :tabnew<CR>
nnoremap <leader>l :tabn<cr>
nnoremap <leader>h :tabp<cr>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

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

" Move selected lines
vnoremap <C-S-k> xkP'[V']
vnoremap <C-S-j> xp'[V']

" Copy and paste to clipboard
noremap <Leader>y "*y
noremap <Leader>p :set paste<cr>"*p:set nopaste<cr>
noremap <Leader>Y "+y
noremap <Leader>P :set paste<cr>"+p:set nopaste<cr>

" jk | Escaping
inoremap jk <Esc>
xnoremap jk <Esc>
cnoremap jk <Esc>

" <F2> NERDTree
map <F2> :NERDTreeToggle<CR>

" <F3> Tagbar
map <F3> :TagbarToggle<CR>

" <F4> Paste mode
nmap <silent> <F4> :set invpaste<CR>:set paste?<CR>
imap <silent> <F4> <ESC>:set invpaste<CR>:set paste?<CR>i

" <F5> Undotree
nnoremap <F5> :UndotreeToggle<cr>

" <F7> EOL format (dos <CR><NL>,unix <NL>,mac <CR>)
set  wildmenu
set  wcm=<Tab>
menu EOL.unix :set fileformat=unix<CR>
menu EOL.dos  :set fileformat=dos<CR>
menu EOL.mac  :set fileformat=mac<CR>
map  <F7> :emenu EOL.<Tab>

" <F8> Change encoding
set  wildmenu
set  wcm=<Tab>
menu Enc.cp1251     :e ++enc=cp1251<CR>
menu Enc.koi8-r     :e ++enc=koi8-r<CR>
menu Enc.cp866      :e ++enc=ibm866<CR>
menu Enc.utf-8      :e ++enc=utf-8<CR>
menu Enc.ucs-2le    :e ++enc=ucs-2le<CR>
map  <F8> :emenu Enc.<Tab>

" <Shift+F8> Convert file encoding
set  wildmenu
set  wcm=<Tab>
menu FEnc.cp1251    :set fenc=cp1251<CR>
menu FEnc.koi8-r    :set fenc=koi8-r<CR>
menu FEnc.cp866     :set fenc=ibm866<CR>
xnoremap enu FEnc.utf-8     :set fenc=utf-8<CR>
menu FEnc.ucs-2le   :set fenc=ucs-2le<CR>
map <S-F8> :emenu FEnc.<Tab>

" This function toggles between the gcov information and current source file
" by Martin Schreder, [volk], 2008
function! GCovToggle()
	let cur_line = line('.')
	let cur_file = expand('%')
	let ftype = &filetype

	" if we are in a gcov file, then go back to the source
	if match(cur_file, '.*\.gcov$') != -1
		" extract line number for the _source_ file
		let src_line_no = matchlist(getline("."), '\s*.\{-}:\s*\(\d*\):')[1]
		let src_file = matchlist(cur_file, '\(.\{-}\)\.gcov')[1]
		
		let src_line = substitute(getline(line(".")), '\s*.\{-}:\s*\d*:', '', '')

		if !filereadable(src_file)
			echo "Source file not found!"
		else	
			exec ":e +".src_line_no." ".src_file
			" if line does not match then go to the first one that does
			if !(src_line is getline(src_line_no))
				call cursor(0,0)
				let line = search(src_line)
				call cursor(line,0)
			" otherwise we are on the exact line
			else
				call cursor(src_line_no, 0)
			end
			exec ":setlocal modifiable"
		endif
	" if we are in the source file
	else
		" open the gcov file and find the right line
		let gcov_file = cur_file.".gcov"
		let src_line = getline(cur_line)

		if !filereadable(gcov_file)
			silent exec "!gcov %"
			redraw!
		endif
		if filereadable(gcov_file)
			exec ":w"
			exec ":e ".gcov_file
			call cursor(0,0)
			" try to find a complete line (with line number)
			let found = search('\s*.\{-}:.*'.string(cur_line).':'.src_line)
			" attempt to find just the code
			if found == 0
				call cursor(0,0)
				let found = search('\s*.\{-}:.*\d\{-}:'.src_line)
			end
			" still not found, go to the line of the source file
			if found == 0
				call cursor(cur_line)
			" we found the exact line
			else
				call cursor(found, 0)
			end
			" make sure the syntax highlighting is on 
			" and that buffer is not writable
			exec ':set filetype='.ftype
			exec ':setlocal nomodifiable'
		else
			echo "No .gcov information available"
		endif
	endif
endfunction

map <F9> :call GCovToggle()<cr>
