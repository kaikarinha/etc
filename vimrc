set nocompatible " iMproved mode (redundant because it should be set by vim when
		 " .vimrc is found)
set path+=** " help for tab-completion

" === Plugin's === "
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdtree'
call vundle#end()
filetype plugin indent on

" === Spaces & Tabs === "
set tabstop=8 " number of visual spaces per TAB
set softtabstop=8 " number of spaces in tab when editing
" set expandtab " tabs are spaces

" === Line Wrapping === "
match WarningMsg '\%>80v.\+' " mark all chars that exceed collumn 80

" === UI Config === "
set number " show line numbers
set cursorline " highligh current line
set showmode " shows the current mode
set wildmenu " visual autocomplete for command menu
set lazyredraw " redraw only when we need to
set showmatch " highlight matching [{()}]
set ruler " shows position of cursor in bottom line
set smartindent
syntax enable
set mouse=c " if you want a to use a mouse, use an other editor
" === Searching === "
set incsearch " search as characters are entered
set hlsearch " highlight matches

" === GUI Settings === "
if has ("gui_running")
    set background=light
    colorscheme solarized " my favorite color scheme
    set guioptions-=m "remove menu bar
    set guioptions-=T "remove toolbar
    set guioptions-=r "remove right-hand scroll bar
    set guioptions-=L "remove left-hand scroll bar
    set guifont=Source_Code_Pro:h11:cANSI:qDRAFT
endif

" === Keybindings ==="
map <F8> :TagbarToggle<CR>
map <F9> :NERDTreeToggle<CR>
map <F7> :let &background = ( &background == "dark"? "light" : "dark")<CR>
map <F6> :let &mouse = ( &mouse == "c"? "a" : "c" )<CR>
map <F5> :source ~\.vimrc<CR>
" shortcut to clear last search highlighting
nnoremap <leader><space> :nohlsearch<CR>
