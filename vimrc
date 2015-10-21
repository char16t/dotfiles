set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Shougo/vimproc.vim'
Plugin 'tpope/vim-sleuth'
" Plugin 'tpope/vim-rvm'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-unimpaired'
Plugin 'ctrlpvim/ctrlp.vim'
" Plugin 'altercation/vim-colors-solarized'
Plugin 'nanotech/jellybeans.vim'
Plugin 'mileszs/ack.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'bling/vim-airline'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'tpope/vim-projectionist'
Plugin 'tpope/vim-dispatch'
Plugin 'majutsushi/tagbar'
Plugin 'godlygeek/tabular'
Plugin 'mbbill/undotree'
" Plugin 'kchmck/vim-coffee-script'
Plugin 'othree/html5.vim'
Plugin 'digitaltoad/vim-jade'
" Plugin 'tmatilai/vim-monit'
Plugin 'ervandew/supertab'
" Plugin 'jpalardy/vim-slime'
" Plugin 'Matt-Deacalion/vim-systemd-syntax'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'fatih/vim-go'
Plugin 'jimenezrick/vimerl'
Plugin 'wting/rust.vim'
" Plugin 'cespare/vim-toml'
" Plugin 'facebook/vim-flow'
Plugin '2072/PHP-Indenting-for-VIm'

Plugin 'eagletmt/ghcmod-vim'
Plugin 'raichoo/haskell-vim'

Plugin 'elzr/vim-json'
" Plugin 'vim-scripts/JavaScript-Indent'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'moll/vim-node'
" Plugin 'mattn/emmet-vim'

Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'

Plugin 'Valloric/MatchTagAlways'

Plugin 'plasticboy/vim-markdown'
" Plugin 'greyblake/vim-preview'

" Plugin 'tpope/vim-haml'
Plugin 'tpope/vim-git'

Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-bundler'

Plugin 'tpope/vim-endwise'
Plugin 'Shougo/vimshell.vim'

Plugin 'guns/vim-clojure-static'
Plugin 'tpope/vim-leiningen'
Plugin 'tpope/vim-classpath'
Plugin 'tpope/vim-fireplace'
Plugin 'venantius/vim-eastwood'

Plugin 'vim-scripts/paredit.vim'
Plugin 'wlangstroth/vim-racket'

Plugin 'stephpy/vim-yaml'

Plugin 'chrisbra/csv.vim'
Plugin 'ekalinin/Dockerfile.vim'

call vundle#end()
syntax on
filetype on
filetype plugin indent on
filetype plugin on

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
