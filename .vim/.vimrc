" ---------------------------------------------------------------------------- "
" General
" ---------------------------------------------------------------------------- "
set nocompatible            " No compatible con vi
filetype off                " Requerido para Vundle

" Vundle
" Runtimepath
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

" Plugins
"
" repos en github
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'honza/snipmate-snippets'
Bundle 'garbas/vim-snipmate'

Bundle 'altercation/vim-colors-solarized'
Bundle 'tomasr/molokai'
Bundle 'tpope/vim-surround'
" cs]": cambia [] por "", ds" borra
" yss}: inserta {} alrededor de la linea
" ysiw}: iserta {} en palabra
Bundle 'ervandew/supertab'
Bundle 'lambdalisue/vim-django-support'
Bundle 'bingaman/vim-sparkup'
" en sparkup.py usar python2
" Crtl+E para activar, Ctrl+N para siguiente elemento
Bundle 'wincent/Command-T'
" Para completar la instalacion:
" cd ~/.vim/bundle/command-t/ruby/command-t
" ruby extconf.rb
" make
Bundle 'sjl/gundo.vim'
"Bundle 'davidhalter/jedi-vim'
Bundle 'Lokaltog/vim-powerline'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'joonty/vdebug'
Bundle 'scrooloose/nerdcommenter'
" <leader>cc activa comentario
" <leader>c<space> toggles comentario
Bundle 'fholgado/minibufexpl.vim'
Bundle 'scrooloose/syntastic'
" pip install flake8
Bundle 'Townk/vim-autoclose'
" vim-scripts repos
Bundle 'The-NERD-tree'
Bundle 'taglist.vim'
Bundle 'vcscommand.vim'
Bundle 'matchit.zip'
"Bundle 'AutoClose'
"Bundle 'Pydiction'

filetype plugin indent on   " Comportamiento por tipo de archivo
syntax on                   " Activamos color por sintaxis

" ---------------------------------------------------------------------------- "
" Interfaz
" ---------------------------------------------------------------------------- "
set guioptions=acg
set t_Co=256                " 256 colores en terminal
"set mouse=a                 " Soporte de mouse
" Color
colorscheme molokai
"set virtualedit=all        " Mover el cursor por todos lados
set scrolloff=4             " Lineas por arriba y debajo
set showmode                " Modo actual
set showcmd                 " Muestra comandos parciales
set wildmenu
set wildignore=*.swp,*.bak,*.pyc,*.class
set ruler                   " Posicion del cursor
"set cursorline              " Subraya linea actual
set laststatus=2            " Se muestra aunque haya solo una ventana
set number                  " Numeros de linea
set title                   " Cambia el titulo en la terminal
if has("gui_running")
    set background=light
    "let g:solarized_termtrans=1
    "let g:solarized_termcolors=256
    "let g:solarized_contrast="high"
    "let g:solarized_visibility="high"
    "colorscheme solarized
    colorscheme two2tango
    set lines=50 columns=130
endif
if has("gui_gtk2")
    "set guifont=Ubuntu\ Mono\ 12
    "set guifont=DejaVu\ Sans\ Mono\ 10
    set guifont=Inconsolata\ Medium\ 12
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
set hidden                      " Si se cierra el buffer no se cierra el archivo
set backspace=indent,eol,start  " Backspace intuitivo
set history=1000
set undolevels=1000
set whichwrap+=<,>,[,]
" Hacen casi lo mismo asi que los mapeo
nnoremap ' `
nnoremap ` '
let mapleader = ","             " Por defecto la tecla leader es \

" ---------------------------------------------------------------------------- "
" Busquedas
" ---------------------------------------------------------------------------- "
set wrapscan
set ignorecase
set smartcase
set gdefault " Busquedas globales por defecto
set incsearch
set showmatch
set hlsearch
nmap <silent> <leader>/ :nohlsearch<CR> " Apagar resaltado

" ---------------------------------------------------------------------------- "
" Backup
" ---------------------------------------------------------------------------- "
set backupdir=~/.vim/backup,/tmp
set directory=~/.vim/backup,/tmp

" ---------------------------------------------------------------------------- "
" Manejo de lineas largas
" ---------------------------------------------------------------------------- "
set nowrap
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
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" ---------------------------------------------------------------------------- "
" Mapeos
" ---------------------------------------------------------------------------- "
nmap <silent> <leader>n :NERDTreeToggle<CR>
map <leader>u :GundoToggle<CR>
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <C-h> <C-w>h
"nnoremap j gj
"nnoremap k gk
"noremap <C-left> :bprev<CR>
"noremap <C-right> :bnext<CR>
" ---------------------------------------------------------------------------- "
" Omnicompletion
" ---------------------------------------------------------------------------- "
set ofu=syntaxcomplete#Complete             " Omnicomlete function
"autocmd FileType python set omnifunc=pythoncomplete#Complete
"autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
"autocmd FileType css set omnifunc=csscomplete#CompleteCSS
"let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabDefaultCompletionType = "<C-X><C-O>"
set completeopt=menuone,longest,preview
" Activamos pydiction
"let g:pydiction_location = "~/.vim/bundle/Pydiction/complete-dict"
let g:miniBufExplMapCTabSwitchBufs = 1
