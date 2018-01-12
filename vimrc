" vimrc ~ configuration file for vim
"
" This are my personal preferences for vim. To keep the file clean, there are as
" less comments as possible. To check the purpose of the settings use
" :h <setting>, as they are described most likely better in the official vim
" documentation than I could. Also most of the settings are self-explaining
" (e.g. set encoding=utf-8).

set nocompatible

"=== Plugin's/Vundle ===========================================================
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
call vundle#end()
filetype plugin indent on

" === Airline Configuration === "
let g:airline#extensions#tabline#enabled = 1

"=== Editor ====================================================================
set autoread
set autowrite

set nobackup
set nowritebackup
set noswapfile

set encoding=utf-8

set path+=**

set lazyredraw
syntax enable

set expandtab
set shiftwidth=4
set softtabstop=4

set backspace=2

set wrap
set linebreak
set textwidth=80
set colorcolumn=+1

set number
set cursorline
"set ruler
set noshowmode

set wildmenu
set showmatch

set mouse=c
"set laststatus=2
set incsearch
set hlsearch

set spelllang=de

"=== GUI Settings ==============================================================
if has ("gui_running")
	set background=light
	colorscheme solarized
	set guioptions-=m
	set guioptions-=T
	set guioptions-=r
	set guioptions-=L
	if has("gui_win32")
		set guifont=Source_Code_Pro:h11:cANSI:qDRAFT
	else
		set guifont=DejaVu\ Sans\ Mono\ 10
	endif
endif

"=== Keybindings ===============================================================
map <F8> :TagbarToggle<CR>
map <F9> :NERDTreeToggle<CR>
map <F7> :let &background = ( &background == "dark"? "light" : "dark")<CR>
map <F6> :let &mouse = ( &mouse == "c"? "a" : "c" )<CR>
map <F5> :source ~\.vimrc<CR>
map <F4> :nohlsearch<CR>
map <F3> :set spell!<CR>
