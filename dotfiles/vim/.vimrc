" General
set history=10000
set noswapfile
set nobackup

syntax off
set number
set wrap
set cursorline

set tabstop=2       " Number of spaces a tab counts for
set shiftwidth=2    " Number of spaces to use for autoindent
set expandtab       " Convert tabs to spaces
set smartindent

set clipboard=unnamedplus
set backspace=indent,eol,start

set showmatch
set ignorecase      " Case-insensitive search
set smartcase       " But case-sensitive if you use capital letters
set incsearch       " Show matches while typing
set hlsearch        " Highlight matches

set wildmenu
set showcmd
set laststatus=2 " Always show the statusline
set statusline=%f\ %h%m%r%=%b\ %l,%c%V\ %P " Basic statusline displaying file name, flags, byte/line/column info, and percentage

" Customize
