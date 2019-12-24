" ================ General Configuration ================================
syntax on                               "turn on syntax highlighting
set encoding=utf8
set fileencoding=utf-8                  "Set utf-8 encoding on write
set background=dark                     "set background to dark
set number                              "show the current line number
set showcmd                             "show incomplete cmds down the bottom
set history=1000                        "change history to 1000
set cursorline                          "highlight current line
set smartcase                           "smart case search if there is uppercase
set ignorecase                          "case insensitive search
set mouse=a                             "enable mouse usage
set backspace=indent,eol,start          "make backspace behave in sane manner
set nocompatible                        "not compatible with vi
set ttyfast                             "faster redrawing
" ================ Line Control  =======================================

set wrap                                "enable word wrap
set wrapmargin=8                        "wrap lines when coming within n characters from side
set linebreak                           "set soft wrapping
set textwidth=120

" ================ Tab Control  ========================================

set noexpandtab				"spaces no tabs
set shiftwidth=4
set tabstop=4

" ================ Scrolling ===========================================

set scrolloff=8          "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=5

" ================ TURN OFF SWAP FILES==================================

set noswapfile
set nobackup
set nowb

" ================ MAPPINGS ============================================
" Maps for Escape key
inoremap jk <Esc>
inoremap kj <Esc>

" Map save to <Ctrl + S>
map <c-s> :w<Cr>

" Maps for Indentation
nnoremap <tab> >>
nnoremap <s-tab> <<
xnoremap <s-tab> <gv
xnoremap <tab> >gv
