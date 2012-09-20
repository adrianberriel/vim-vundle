" ---------------------------------------------------------------------------- "
" Lo basico
" ---------------------------------------------------------------------------- "
" No compatible con vi
set nocompatible
" Requerido para Vundle
filetype off

" Vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" Dejamos que Vundle maneje a Vundle
Bundle 'gmarik/vundle'

" Mis Bundles
"
" repos on github
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'honza/snipmate-snippets'
Bundle 'garbas/vim-snipmate'
Bundle 'altercation/vim-colors-solarized'
" vim-scripts repos
"Bundle 'FuzzyFinder'
" non github repos
"Bundle 'git://git.wincent.com/command-t.git'

" Comportamiento por tipo de archivo
filetype plugin indent on

" Activamos color por sintaxis
syntax on

" Omnicompletion
set ofu=syntaxcomplete#Complete

" ---------------------------------------------------------------------------- "
" Interfaz
" ---------------------------------------------------------------------------- "
" Opciones para la GUI, toolbar etc
set guioptions=acg
" Soporte para 256 colores
set t_Co=256
" Soporte de mouse
set mouse=a
" Color
"syntax enable
set background=dark
colorscheme solarized
" Mover el cursor por todos lados
set virtualedit=all
" Lineas por arriba o debajo cuando se hace scroll
set scrolloff=4
" Muestra el modo en el que esta
set showmode
" Muestra comandos parciales en la linea de estado
set showcmd
" Menu de autocompletado
set wildmenu
" Muestra posicion del cursor
set ruler
" Linea de estado aunque haya solo una ventana
set laststatus=2
" Muestra numeros de linea
set number
if has("gui_running")
    "set guifont=Ubuntu\ Mono\ 12
    "set lines=40 columns=120
endif

" ---------------------------------------------------------------------------- "
" Indentacion y tabs
" ---------------------------------------------------------------------------- "
set autoindent
"set smartindent
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

" ---------------------------------------------------------------------------- "
" Preferencias generales
" ---------------------------------------------------------------------------- "
set encoding=utf-8
set hidden          " Si se cierra el buffer no se cierra el archivo
set backspace=indent,eol,start  " Backspace intuitivo
set history=700
" Hacen casi lo mismo asi que los mapeo
nnoremap ' `
nnoremap ` '

let mapleader = ","     " Por defecto la tecla leader es \

" ---------------------------------------------------------------------------- "
" Preferencias para busquedas
" ---------------------------------------------------------------------------- "
" Set the search scan to wrap around the file
set wrapscan
set ignorecase
set smartcase
set gdefault " Busquedas globales por defecto
set incsearch
set showmatch
" Resaltado de busqueda
set hlsearch
nmap <silent> <leader>n :silent :nohlsearch<cr>  " Apagar resaltado

" ---------------------------------------------------------------------------- "
" Backup
" ---------------------------------------------------------------------------- "
set backupdir=~/.vim/backup,/tmp
set directory=~/.vim/backup,/tmp

" ---------------------------------------------------------------------------- "
" Manejo de lineas largas
" ---------------------------------------------------------------------------- "
set wrap
set textwidth=79
set formatoptions=c,q,r,t

" ---------------------------------------------------------------------------- "
" Caracteres invisibles
" ---------------------------------------------------------------------------- "
set list
set listchars=tab:▸\ ,eol:¬,trail:·

" ---------------------------------------------------------------------------- "
" Clipboard
" ---------------------------------------------------------------------------- "
"  Uso del system clipboard y mapeo para el yank
set clipboard=unnamed
nnoremap y "+y
vnoremap y "+y

" ---------------------------------------------------------------------------- "
" Edicion de vimrc
" ---------------------------------------------------------------------------- "
nmap <silent> <leader>ev :e $MYVIMRC<cr>
nmap <silent> <leader>sv :so $MYVIMRC<cr>

" ---------------------------------------------------------------------------- "
" Mapeos
" ---------------------------------------------------------------------------- "
nmap <silent> <leader>t :NERDTreeToggle<cr>
nmap <silent> <leader>be :BufExplorer<cr>
nmap <silent> <leader>bv :BufExplorerVerticalSplit<cr>
nmap <silent> <leader>bs :BufExplorerHorizontalSplit<cr>

let g:SuperTabDefaultCompletionType = "<C-X><C-O>"
