set nocompatible
set nobackup

"""""""""""""""""""""""""""""""""""""""""
" General
"""""""""""""""""""""""""""""""""""""""""
"how many lines of history VIM has to remember
set history=250

"Enable filetype plugins
filetype plugin on
filetype indent on

"auto read when a file is changed from the outside
set autoread

"map leader
let mapleader = ","

"quick saving
nmap <leader>w :w!<cr>

"escape remap
inoremap fd <esc>

"""""""""""""""""""""""""""""""""""""""""
" User Interface
"""""""""""""""""""""""""""""""""""""""""
"lines until bottom/top before screen moves vertically with j/k
set scrolloff=9

"turn on the wild menu
set wildmenu
set wildmode=longest:full,full

"turn on ruler
set ruler

"height of the command bar
set cmdheight=1

"buffer becomes hidden when it is abandoned
set hid

"Allow backspacing over everything in insert mode
set backspace=2

"searching settings
set ignorecase
set smartcase
set hlsearch
set incsearch

"don't redraw while executing macros
set lazyredraw

"magic for regex
set magic

"set indentation and tab setting
set expandtab
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent
set smarttab
set wrap
set linebreak
set tw=500

"show matching brackets
set showmatch
"blink time of matching brackets in decaseconds
set mat=2

"no sounds on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

"left margin
set foldcolumn=0

"coloring and appearence
color desert
set background=dark
syntax on
set relativenumber

"file settings
set encoding=utf8
set ffs=unix,dos,mac


"""""""""""""""""""""""""""""""""""""""""
" visual mode related
"""""""""""""""""""""""""""""""""""""""""
vnoremap fd <esc> 


"""""""""""""""""""""""""""""""""""""""""
" moving around, tabs, windows, and buffers
"""""""""""""""""""""""""""""""""""""""""
"move to end of line
nnoremap L $
"move to first nonwhitespace of line
nnoremap H ^

"remap ',' to '.'
nnoremap . ,

"allow access to .
nnoremap <leader>. .

"bottom with zz
nnoremap G Gzz

"jump between tabs
nmap <leader>m :tabn<cr>
nmap <leader>n :tabp<cr>

"move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

"create splits and windows
nmap <leader>bwv :vsplit<cr>
nmap <leader>bws :split<cr>
nmap <leader>bwq :quit<cr>
nmap <leader>bwo :only<cr>
nmap <leader>bwr :resize 
nmap <leader>bwrv :vertical resize 

"move around buffers
nmap <leader>bls :buffers<cr>
nmap <leader>bn :bn<cr>
nmap <leader>bp :bp<cr>
nmap <leader>bb :buffers<cr>:b
nmap <leader>bd :bp\|bd #<cr>


"insert newline under cursor w/o moving cursor. uses m marker
nnoremap <cr> mmo<esc>`m

"insert mode commands
inoremap <C-u> <esc>g~iwea

"leader  based commands
nmap <leader>cm :!make 
nmap <leader>cc :!
nmap <leader>U g~iw
nmap <leader>u g~iwe
nmap <leader>ev :tabedit $MYVIMRC<cr>
nmap <leader>sv :source $MYVIMRC<cr>

"""""""""""""""""""""""""""""""""""""""""
" Status Line
"""""""""""""""""""""""""""""""""""""""""
set laststatus=2

set statusline=%#Question#  " Set highlighting
set statusline+=%f           " Path to file
set statusline+=\ -\         " Separator
set statusline+=Type:        " Label
set statusline+=%y           " Filetype of the file
set statusline+=\ -\         " Separator
set statusline+=Buf:         " Label
set statusline+=%n           " Buffer number
set statusline+=%=           " Switch to right side
set statusline+=Line:        " Label
set statusline+=%l           " current line
set statusline+=/            " Separator
set statusline+=%-5L         " Total Lines
set statusline+=\ \          " Separator
set statusline+=Col:         " Label
set statusline+=%c\          " Column number
