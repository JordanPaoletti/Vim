set nocompatible	" Use Vim defaults (much better!)
"vundle setting {{{
filetype off

"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"let vundle manage vundle
Plugin 'VundleVim/Vundle.vim'


"utlisnips {{{
" Track the Engine
Plugin 'SirVer/ultisnips'

" Trigger config
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"


"}}}

"All plugins must be added before the following line
call vundle#end() "required
filetype plugin indent on "required


" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"}}}

set bs=2		" allow backspacing over everything in insert mode
set ai			" always set autoindenting on
set viminfo='20,\"50	" read/write a .viminfo file, don't store more
			" than 50 lines of registers

" expand tabs
set expandtab
set tabstop=4
set shiftwidth=4
set autoindent

" Define "del" char to be the same backspace (saves a LOT of trouble!)
map <C-V>127 <C-H>

"     autowrite: "on" saves a lot of trouble
set   autowrite

" Fixes broken arrow keys hopefully
if &term[:4] == "xterm" || &term[:5] == 'screen' || &term[:3] == 'rxvt'
  inoremap <silent> <C-[>OC <RIGHT>
endif

" comments default: sr:/*,mb:*,el:*/,://,b:#,:%,:XCOMM,n:>,fb:-
set comments=b:#,:%,:\",fb:-,n:>,n:),n:\"

syntax enable
colorscheme molokai

"Code Folding
set foldmethod=marker 


" sets relative line numbers
set relativenumber

" my mappings
let mapleader = ","
let maplocalleader = "\\"
" moves current lines up or down within text (currently buggy)
nnoremap - ddp
nnoremap _ ddkP
" uses ctrl-u to uppercase the current word (buggy for i mode)
inoremap <c-u> <esc>g~iwea
nnoremap <c-u> g~iwe
" makes H and L go to end of line and beginning
nnoremap L $
nnoremap H ^
" opens vimrc in a vertical split
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
" leader shortcuts for navigating tabs
nnoremap <leader>n :tabn<cr>
nnoremap <leader>p :tabp<cr><cr>
" jk to exit insert mode
inoremap jk <esc>
" nop remapping to elimanate bad habits
inoremap <esc> <nop>
" enter adds new line below in command mode
nnoremap <cr> mmo<esc>`m

"abbreviations for spelling
iabbrev mian main
"abbreviations for authorship
iabbrev @@ Jordan Paoletti

"Java abreviations
"augroup javaAbrevs
"        autocmd!
"        autocmd FileType java :iabbrev <buffer> println System.out.println();<left><left><bs>
"        autocmd FileType java :iabbrev <buffer> print System.out.print();<left><left><bs>
"augroup end
