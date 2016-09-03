set nocompatible

call plug#begin('~/.vim/bundle')

" Plugin 'nathanaelkane/vim-indent-guides'
Plug 'Shougo/vimproc.vim'
Plug 'tpope/vim-sleuth'
" Plugin 'tpope/vim-rvm'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-unimpaired'
Plug 'ctrlpvim/ctrlp.vim'
" Plugin 'altercation/vim-colors-solarized'
Plug 'nanotech/jellybeans.vim'
Plug 'mileszs/ack.vim'
Plug 'tpope/vim-fugitive'
Plug 'bling/vim-airline'
" Plugin 'jeetsukumaran/vim-buffergator'
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-dispatch'
Plug 'majutsushi/tagbar'
Plug 'godlygeek/tabular'
Plug 'mbbill/undotree'
" Plugin 'kchmck/vim-coffee-script'
Plug 'othree/html5.vim'
Plug 'digitaltoad/vim-jade'
" Plugin 'tmatilai/vim-monit'
Plug 'ervandew/supertab'
" Plugin 'jpalardy/vim-slime'
" Plugin 'Matt-Deacalion/vim-systemd-syntax'
Plug 'editorconfig/editorconfig-vim'
Plug 'fatih/vim-go'
Plug 'jimenezrick/vimerl'
Plug 'wting/rust.vim'
" Plugin 'cespare/vim-toml'
" Plugin 'facebook/vim-flow'
Plug '2072/PHP-Indenting-for-VIm'

Plug 'eagletmt/ghcmod-vim'
Plug 'raichoo/haskell-vim'

Plug 'elzr/vim-json'
" Plugin 'vim-scripts/JavaScript-Indent'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'moll/vim-node'
" Plugin 'mattn/emmet-vim'

Plug 'xolox/vim-misc'
Plug 'xolox/vim-easytags'

Plug 'Valloric/MatchTagAlways'

Plug 'plasticboy/vim-markdown'
" Plugin 'greyblake/vim-preview'

" Plugin 'tpope/vim-haml'
Plug 'tpope/vim-git'

Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-bundler'

Plug 'tpope/vim-endwise'
"Plugin 'Shougo/vimshell.vim'

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

syntax on
filetype on

let mapleader=","

" Sets how many lines of history VIM has to remember
set history=500

" Configure backspace so it acts as it should act
set backspace=eol,start,indent

" enhanced command completion
set wildmenu

set visualbell

if has('mouse')
  set mouse=a
endif

" Don't redraw while executing macros (good performance config)
set lazyredraw

set cursorline
set hidden
set nofoldenable
"set modelines=0
set clipboard=unnamedplus
" set clipboard=unnamed
"set synmaxcol=128
"set ttyscroll=10
"set encoding=utf-8
set nowrap
set number
set hlsearch
set ignorecase
set smartcase

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

" set autoindent
" set smartindent
" set softtabstop=4
set tabstop=4
set shiftwidth=4
" set smarttab
set expandtab

" set background=dark
set t_Co=256
colorscheme jellybeans

" ================ Persistent Undo ==================
" Keep undo history across sessions, by storing in file.
" Only works all the time.
if has('persistent_undo')
  silent !mkdir ~/.vim/backups > /dev/null 2>&1
  set undodir=~/.vim/backups
  set undofile
endif

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0

let g:syntastic_check_on_wq = 0

let g:jsx_ext_required = 0

" let g:slime_target = "tmux"

let g:vim_json_syntax_conceal = 0

" let g:acp_enableAtStartup = 0
" let g:neocomplete#enable_at_startup = 1
" let g:neocomplete#enable_smart_case = 1

" let g:neocomplete#sources#syntax#min_keyword_length = 3
" let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" if !exists('g:neocomplete#keyword_patterns')
" 	let g:neocomplete#keyword_patterns = {}
" endif
" let g:neocomplete#keyword_patterns['default'] = '\h\w*'

let g:easytags_async = 1

" Enable omni completion.
" autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
" autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
" autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
" autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
" autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
" autocmd FileType ruby setlocal omnifunc=rubycomplete#CompleteTags

"let g:buffergator_viewport_split_policy = "B"
"let g:buffergator_sort_regime = "mru"

let g:vim_markdown_folding_disabled = 1


let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_haml_checkers = ['haml_lint']
let g:syntastic_ruby_checkers = ['rubocop', 'mri']
let g:syntastic_erlang_checkers = ['syntaxerl', 'escript']

let g:syntastic_php_checkers=['php', 'phpcs']
let g:syntastic_php_phpcs_exec='~/.composer/vendor/bin/phpcs'
let g:syntastic_php_phpcs_args='--standard=PSR2 -n'

" imap <C-k>     <Plug>(neosnippet_expand_or_jump)
" smap <C-k>     <Plug>(neosnippet_expand_or_jump)
" xmap <C-k>     <Plug>(neosnippet_expand_target)

nmap <F8> :TagbarToggle<CR>
nnoremap <F5> :UndotreeToggle<cr>

" Map ctrl-movement keys to window switching
map <C-k> <C-w><Up>
map <C-j> <C-w><Down>
map <C-l> <C-w><Right>
map <C-h> <C-w><Left>

" Toggle paste mode
nmap <silent> <F4> :set invpaste<CR>:set paste?<CR>
imap <silent> <F4> <ESC>:set invpaste<CR>:set paste?<CR>

" format the entire file
nnoremap <leader>fef :normal! gg=G``<CR>

" set text wrapping toggles
nmap <silent> <leader>tw :set invwrap<CR>:set wrap?<CR>

" find merge conflict markers
nmap <silent> <leader>fc <ESC>/\v^[<=>]{7}( .*\|$)<CR>

" upper/lower word
nmap <leader>u mQviwU`Q
nmap <leader>l mQviwu`Q

nmap <C-\> :NERDTreeFind<CR>
nmap <silent> <leader><leader> :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.pyc$']

nmap <silent> // :nohlsearch<CR>
noremap ,hl :set hlsearch! hlsearch?<CR>

" Allows you to enter sudo pass and save the file
" " when you forgot to open your file with sudo
cmap w!! %!sudo tee > /dev/null %

" Allow to copy/paste between VIM instances
" "copy the current visual selection to ~/.vbuf
vmap <Leader>y :w! ~/.vbuf<CR>
" "copy the current line to the buffer file if no visual selection
nmap <Leader>y :.w! ~/.vbuf<CR>
" "paste the contents of the buffer file
nmap <Leader>p :r ~/.vbuf<CR>

" Automatically removing all trailing whitespace
autocmd BufWritePre * :%s/\s\+$//e

au BufRead,BufNewFile {Vagrantfile,Gemfile,Capfile} set ft=ruby

" autocmd FileType ruby compiler ruby

" au FileType ruby setl sw=2 sts=2 et
" au FileType javascript setl sw=2 sts=2 et
" au FileType yaml setl sw=2 sts=2 et

if filereadable(expand("~/.vimrc.after"))
  source ~/.vimrc.after
endif

" My old vim config
set textwidth=80
set enc=utf-8
set number

" Color scheme and syntax
syntax on
set t_Co=256

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
" inoremap <esc> <nop>
" noremap <Up> <nop>
" noremap <Down> <nop>
" noremap <Left> <nop>
" noremap <Right> <nop>

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

" Copy and paste to clipboard
noremap <Leader>y "*y
noremap <Leader>p "*p
noremap <Leader>Y "+y
noremap <Leader>P "+p


" File encoding
" https://www.opennet.ru/base/rus/vim_rus_text.txt.html

"<F7> EOL format (dos <CR><NL>,unix <NL>,mac <CR>)
set  wildmenu
set  wcm=<Tab>
menu EOL.unix :set fileformat=unix<CR>
menu EOL.dos  :set fileformat=dos<CR>
menu EOL.mac  :set fileformat=mac<CR>
map  <F7> :emenu EOL.<Tab>

"<F8> Change encoding
set  wildmenu
set  wcm=<Tab>
menu Enc.cp1251     :e ++enc=cp1251<CR>
menu Enc.koi8-r     :e ++enc=koi8-r<CR>
menu Enc.cp866      :e ++enc=ibm866<CR>
menu Enc.utf-8      :e ++enc=utf-8<CR>
menu Enc.ucs-2le    :e ++enc=ucs-2le<CR>
map  <F8> :emenu Enc.<Tab>

"<Shift+F8> Convert file encoding
set  wildmenu
set  wcm=<Tab>
menu FEnc.cp1251    :set fenc=cp1251<CR>
menu FEnc.koi8-r    :set fenc=koi8-r<CR>
menu FEnc.cp866     :set fenc=ibm866<CR>
menu FEnc.utf-8     :set fenc=utf-8<CR>
menu FEnc.ucs-2le   :set fenc=ucs-2le<CR>
map  <S-F8> :emenu FEnc.<Tab>
