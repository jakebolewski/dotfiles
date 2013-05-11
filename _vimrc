set nocompatible	" Disable vi-compatibility 
set laststatus=2	" Always show the statusline
set encoding=utf-8	" Show Unicode glyphs
set t_Co=256            " Tell vim explicitly of 256 color support

filetype off		" Necessary for Vundle 
filetype plugin indent on 

syntax on
colorscheme Tomorrow-Night 

""""""""""""""""""""""""""""""""
" GUI Options 
""""""""""""""""""""""""""""""""
if has("gui_running")
    " Remove menu bar
    set guioptions-=m
    " Remove toolbar
    set guioptions-=T
    " Remove scrollbar
    set guioptions-=l
    set guioptions-=L
    set guioptions-=r
    set guioptions-=b
    " Set Font 
    set guifont=Inconsolata\ 8
endif
""""""""""""""""""""""""""""""""
" Vundle Plugin Setup....
""""""""""""""""""""""""""""""""
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

""""""""""""""""""""""""""""""""
" Bundles 
""""""""""""""""""""""""""""""""

""""" github """""
" git integration
Bundle 'tpope/vim-fugitive.git'

"filetree navigation
Bundle 'scrooloose/nerdtree.git'

"bottom toolbar
Bundle 'Lokaltog/vim-powerline'

"syntax checking
Bundle 'scrooloose/syntastic.git'

"fuzzy file, buffer, mru, tag finder
Bundle 'kien/ctrlp.vim.git'

"ctags sidebar 
Bundle 'majutsushi/tagbar.git'

"intelligent insert mode competions
Bundle 'ervandew/supertab.git'

""""" Specific Language Plugins """""
"python integration, syntax checking and more 
Bundle 'klen/python-mode.git'
Bundle 'tshirtman/vim-cython.git'

"opencl integration and sytax checking 
Bundle 'petRUShka/vim-opencl.git'

"clojure
Bundle "guns/vim-clojure-static"
Bundle "kien/rainbow_parentheses.vim"
Bundle "tpope/vim-fireplace"
Bundle "tpope/vim-classpath"


""""" vimscripts """"""
Bundle 'L9'
Bundle 'FuzzyFinder'

""""""""""""""""""""""""""""""""
"filetype plugin indent off
" Tab settings for python files
"autocmd FileType python set tabstop=4|set softtabstop=4|set shiftwidth=4|set expandtab

" Enable default line numbers
set number
set numberwidth=1

"NERD Tree Config
map <leader>n :NERDTreeToggle<CR> 

"pymode config 
let g:pymode_folding = 0
let tlist_pyrex_settings='python;c:classe;m:memder;f:function'

"Enable tab completion for filename expansion
set wildmenu
set wildmode=longest:full,full
