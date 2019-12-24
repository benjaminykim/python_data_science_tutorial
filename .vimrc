" ================ PLUGINS  ========================

call plug#begin('~/.dotfiles/.config/nvim/plugged')

Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] } | Plug 'Xuyuanp/nerdtree-git-plugin' | Plug 'ryanoasis/vim-devicons'
Plug 'mileszs/ack.vim'
Plug 'tpope/vim-commentary'
Plug 'benmills/vimux'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/syntastic'
Plug 'benekastah/neomake'               "python
Plug 'editorconfig/editorconfig-vim'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'sotte/presenting.vim'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'vim-scripts/matchit.zip'
Plug 'tpope/vim-sleuth'                 "detect indent style (tabs vs. spaces)
Plug 'sickill/vim-pasta'                "context-aware pasting
Plug 'Valloric/YouCompleteMe'
Plug 'nightsense/nemo'
Plug 'flazz/vim-colorschemes'			"colorscheme
call plug#end()

" ================ General Configuration ========================

syntax on                               "turn on syntax highlighting
colorscheme molokai
set encoding=utf8
set fileencoding=utf-8                  "Set utf-8 encoding on write
set background=dark                     "set background to dark
set number                              "show the current line number
set showbreak=…                         "show ellipsis at breaking
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set laststatus=2                        "show the status line all the time
set title                               "change the terminal's title
set showcmd                             "show incomplete cmds down the bottom
set history=1000                        "change history to 1000
set cursorline                          "highlight current line
set smartcase                           "smart case search if there is uppercase
set ignorecase                          "case insensitive search
set mouse=a                             "enable mouse usage
set backspace=indent,eol,start          "make backspace behave in sane manner
set nocompatible                        "not compatible with vi
set ttyfast                             "faster redrawing
let mapleader = ','                     "set leader key
let g:mapleader = ','                   "set leader key

set t_Co=256                            "set 256 colors
set noshowmode                          "hide showmode because of the powerline plugin
set gdefault                            "set global flag for search and replace
set gcr=a:blinkon500-blinkwait500-blinkoff500           "set cursor blinking rate
set showmatch                           "highlight matching bracket
set nostartofline                       "jump to first non-blank character
set timeoutlen=1000 ttimeoutlen=200     "reduce Command timeout for faster escape and O
set listchars=tab:\ \ ,trail:·          "set trails for tabs and spaces
set list                                "enable listchars
set lazyredraw                          "do not redraw on registers and macros
set completeopt-=preview                "disable preview for autocomplete
set hidden                              "hide buffers in background
set conceallevel=2 concealcursor=i      "neosnippets conceal marker
set splitright                          "set up new splits positions

" ================ Line Control  ========================

set wrap                                "enable word wrap
set wrapmargin=8                        "wrap lines when coming within n characters from side
set linebreak                           "set soft wrapping
set textwidth=120

" ================ Tab Control  ========================

set noexpandtab                         "insert tabs rather than spaces for <Tab>
set shiftround                          "round indent to a multiple of 'shiftwidth'
set completeopt+=longest
set shiftwidth=4
set softtabstop=4
set tabstop=4
set smartindent
set autoindent                          "automatically set indent of new line
set smarttab                            "tab respects 'tabstop', 'shiftwidth', and 'softtabstop'
set nofoldenable

" ================ Scrolling ========================

set scrolloff=8          "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=5

" ================ TURN OFF SWAP FILES==============

set noswapfile
set nobackup
set nowb

" =============== PERSISTENT UNDO ==================

" Keep undo history across sessions, by storing in file.
silent !mkdir ~/.config/nvim/backups > /dev/null 2>&1
set undodir=~/.config/nvim/backups
set undofile

" ================ FUNCTIONS ========================

function! s:StripTrailingWhitespaces()
	let l:l = line(".")
	let l:c = col(".")
	%s/\s\+$//e
	call cursor(l:l, l:c)
endfunction

function! s:LoadLocalVimrc()
	if filereadable(glob(getcwd() . '/.vimrc.local'))
		:execute 'source '.fnameescape(glob(getcwd(). '/.vimrc.local'))
	endif
endfunction

" ================ COMPLETION =======================

set wildmode=list:full
set wildignore=*.o,*.obj,*~                 "stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*cache*
set wildignore+=*logs*
set wildignore+=*node_modules/*
set wildignore+=*DS_Store*
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif

" ================ PLUGIN CONFIG  ========================

" ================ NERDTREE
" close NERDTree after a file is opened
let g:NERDTreeQuitOnOpen=0

" show hidden files in NERDTree
let NERDTreeShowHidden=1

" remove some files by extension
let NERDTreeIgnore = ['\.js.map$']

let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" Toggle NERDTree
nmap <silent> <leader>k :NERDTreeToggle<cr>

" expand to the path of the file in the current buffer
nmap <silent> <leader>l :NERDTreeFind<cr>

" ================ Syntastic
let g:snytastic_python_pylint_rcfile='~/.dotfiles/config/nvim/.pylintrc'

" ================ CTRL-P
" map fuzzyfinder (CtrlP) plugin
" nmap <silent> <leader>t :CtrlP<cr>
nmap <silent> <leader>r :CtrlPBuffer<cr>
let g:ctrlp_map='<leader>t'
let g:ctrlp_dotfiles=1
let g:ctrlp_working_path_mode = 'ra'

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" search the nearest ancestor that contains .git, .hg, .svn
let g:ctrlp_working_path_mode = 2

" airline options
let g:airline_powerline_fonts=1
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_theme='base16_chalk'

" don't hide quotes in json files
let g:vim_json_syntax_conceal = 0
let g:SuperTabCrMapping = 0

" ================ AUTO COMMANDS ======================

augroup vimrc
	autocmd!
augroup END

autocmd vimrc BufWritePre * :call s:StripTrailingWhitespaces()                  "Auto-remove trailing spaces
autocmd vimrc InsertEnter * :set nocul                                          "Remove cursorline highlight
autocmd vimrc InsertLeave * :set cul                                            "Add cursorline highlight in normal mode
autocmd vimrc FileType html,javascript,coffee,cucumber setlocal sw=2 sts=2 ts=2 "Set 2 indent for html
autocmd vimrc FileType php,javascript setlocal cc=80                            "Set right margin only for php and js
autocmd vimrc VimEnter,BufNewFile,BufReadPost * call s:LoadLocalVimrc()         "Load per project vimrc (Used for custom test mappings, etc.)

autocmd vimrc VimEnter * set vb t_vb=

autocmd vimrc FileType nerdtree syntax match hideBracketsInNerdTree
			\ "\]" contained conceal containedin=ALL


au BufRead,BufNewFile *.cerr set filetype=myerror
au Syntax myerror source $HOME/.dotfiles/config/nvim/error/cerr.vim

"================ CUSTOM MAPPINGS =====================

" Compile and Run
autocmd filetype cpp nnoremap <F8> :w<CR>:!g++ -std=c++11 % -o%< && ./%<<CR>
autocmd filetype c   nnoremap <F8> :w<CR>:!gcc % -o%< && ./%<<CR>
autocmd filetype python nnoremap <F8> :w <bar> exec '!python3 '.shellescape('%')<CR>
autocmd filetype arduino nnoremap <F8> :w<CR>:!processing-java --sketch=./% --run<CR>
autocmd filetype python nnoremap <F9> :w<bar>execute '!tmux send-keys -t top-left C-p'<CR>

" Resize window with shift + and shift -
nnoremap + <c-w>5>
nnoremap _ <c-w>5<

" Map save to Ctrl + S
map <c-s> :w<CR>

" Map for Escape key
inoremap jk <Esc>
inoremap jj <Esc>
inoremap kk <Esc>
inoremap kj <Esc>

"Copy to system clipboard
vnoremap <C-c> "+y
nnoremap <C-c> "+y

" Paste from system clipboard with Ctrl + v
inoremap <C-v> <Esc>"+p
nnoremap <C-v> "+p
vnoremap <C-v> "+p
nnoremap <Leader>p "0p
vnoremap <Leader>p "0p,

" Maps for indentation
nnoremap <tab> >>
nnoremap <s-tab> <<
xnoremap <s-tab> <gv
xnoremap <tab> >gv

" Clear search highlight
nnoremap <Leader><space> :noh<CR>

" Auto change directory to match current file
nnoremap <Leader>dc :cd %:p:h<CR>:pwd<CR>

" Filesearch plugin map for searching in whole folder
nnoremap <Leader>f :Ack

" Window Management
" split vertically
nnoremap <Leader>n <C-w>v
" split horizontally
nnoremap <Leader>l <C-w>s
" switch between windows
nnoremap <Leader>m <C-w>w
" quit a window
nnoremap <Leader>. <C-w>q

"copyright add authomatically
"add or update the header
autocmd BufNewFile *.c exec ":call AddHeader()"
autocmd BufNewFile *.h exec ":call AddHeader()"
autocmd BufNewFile *.m exec ":call AddHeader()"
autocmd BufNewFile *.js exec ":call AddHeader()"
map <F4> :call AddHeader()<cr>'s
function AddHeader()
    call append(0, "//")
    call append(1, "//  ".expand("%:t"))
    call append(2, "//  ".fnamemodify(getcwd(), ':t'))
    call append(3, "//")
    call append(4, "//  Created by Ben (benkim96@gmail.com) on ".strftime("%m/%d/%y").".")
    call append(6, "//")
    call append(7, "//  Description: ")
    call append(8, "//")
    echohl WarningMsg | echo "Succeeded in adding copyright." | echohl None
endfunction

"copyright add authomatically
"add or update the header
autocmd BufNewFile *.py exec ":call AddHeaderPy()"
map <F4> :call AddHeaderPy()<cr>'s
function AddHeaderPy()
    call append(0, "\"\"\"")
    call append(1, "\t".expand("%:t"))
    call append(2, "\t".fnamemodify(getcwd(), ':t'))
    call append(3, "")
    call append(4, "\tCreated by Ben (benkim96@gmail.com) on ".strftime("%m/%d/%y").".")
    call append(5, "\tDescription: ")
    call append(6, "\"\"\"")
    echohl WarningMsg | echo "Succeeded in adding copyright." | echohl None
endfunction
