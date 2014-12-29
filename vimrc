" Menu settings
" =============
language messages en set langmenu=en_US.UTF-8 " Menus in UTF-8 English
set langmenu=en_US
let $LANG = 'en_US'
source $VIMRUNTIME/delmenu.vim	
source $VIMRUNTIME/menu.vim	        " End of menu settings

" Style
" =====
colorscheme evening
syntax on
set wrap
set textwidth=0 wrapmargin=0        " Prevent line breaks in long lines
set linebreak
set nu

" Other
" =====
set encoding=utf-8
set fileencoding=utf-8
set backup
set autoindent
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

au BufRead,BufNewFile *.md set filetype=markdown
autocmd VimEnter * source $VIMFILES\session.vim		" Load default session on start
autocmd VimLeave * mksession! $VIMFILES\session.vim	" Autosave session on close

" Tabs key presses
" ================
set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.
set shiftwidth=4    " Indents will have a width of 4
set softtabstop=4   " Sets the number of columns for a TAB
set expandtab       " Expand TABs to spaces

" Buffer management
" =================
nnoremap <C-n> :enew<CR> 
map <C-Tab> :bn<CR>
map <C-S-Tab> :bp<CR>
map <C-e> :b#<CR>
set viminfo+=n$VIMFILES/_viminfo

" Abbreviations
" =============
ab ,. [ ]

" System specific settings
" ========================
if has("win32") || has("win64")
	let $HOME=$USERPROFILE				" Adjust for logon script that sets $HOME to network drive
	let $VIMFILES=$HOME."\\vimfiles"
	let $WEB=$HOME."\\Dropbox\\writing\\webpage"
	set backupdir=$VIMFILES\\backup
	set directory=$VIMFILES\\tmp
	cd $HOME\Documents 
	if has("gui_running")
		source $VIMRUNTIME/mswin.vim	" Windows familiar shortcuts
		behave mswin
		set guifont=Consolas:h10
		set go-=r						" Removes left/right scrollbars and toolbar buttons, does not work to have single line for all three
		set go-=L
		set go-=T
	endif
endif
