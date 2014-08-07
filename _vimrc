" Additions
set viminfo+=n$HOME/_viminfo
set encoding=utf-8
set fileencoding=utf-8

" Change backup directory
set backup
set backupdir=$HOME\\backup
set directory=$HOME\\tmp

" Style
colorscheme evening
set wrap
set linebreak
set nu
set autoindent

" Automatic syntax highlighting
au BufRead,BufNewFile *.md set filetype=markdown

if has('gui_running')
 set guifont=Consolas:h10
endif

set hidden
set ignorecase
set incsearch
set smartcase
set showmatch
set ruler
set vb
set noerrorbells
set showcmd
set history=1000
set undolevels=1000

" Tabs
map <C-Tab> gt
map <C-S-Tab> gT
map <C-1> 1gt
map <C-2> 2gt
map <C-3> 3gt
map <C-4> 4gt
map <C-5> 5gt
map <C-6> 6gt
map <C-7> 7gt
map <C-8> 8gt
map <C-9> 9gt
