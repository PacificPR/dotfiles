"execute pathogen#infect()
"runtime autoload/pathogen.vim
set nocompatible
filetype off
syntax on                       "Shows some syntax, keywords in different fonts and colour.
filetype plugin  indent on     "Loads filetype specific indent files

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin() 

Plugin 'VundleVim/Vundle.vim'
Plugin 'preservim/nerdtree'
Plugin 'frazrepo/vim-rainbow'
Plugin 'luochen1990/rainbow'
Plugin 'alvan/vim-closetag'
Plugin 'flazz/vim-colorschemes' 
Plugin 'dense-analysis/ale' 
Plugin 'vim-airline/vim-airline' 
Plugin 'vim-airline/vim-airline-themes' 
Plugin 'tpope/vim-commentary'
Plugin 'junegunn/goyo.vim'
Plugin 'ryanoasis/vim-devicons'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'
Plugin 'othree/yajs.vim'
Plugin 'mxw/vim-jsx'
Plugin 'mlaursen/vim-react-snippets'
Plugin 'tpope/vim-fugitive.git'
Plugin 'haishanh/night-owl.vim'

call vundle#end() 



set autoindent          " file specific indenting
syntax enable
set number                             "Shows the line number on left side.  "Below are shortcuts obtained by remapping to make things easier.

let g:ale_enabled=0

 " Yanking and pasting shortcut
 
"map <C-v> "+P 
"vnoremap <C-c> "*y :let @+=@*<CR>
"vnoremap <C-c> "+y
" Compiling c programs easily
autocmd FileType c nnoremap cm :w<Enter>:!clear&&gcc %&&./a.out <Enter>
" Compiling python programs easily 
autocmd FileType python nnoremap cm :w<Enter>:!clear && python3 "%"<Enter>

" SAVING FILE WITHOUT EXITING
nnoremap ;; :w<Enter>

let &t_SI = "\<Esc>[5 q"  "Blinking bar in insert mode.
let &t_EI = "\<Esc>[1 q"  "Blinking block in normal/visual modes.  
let &t_SR = "\<Esc>[3 q"  "Blinking underline in replace mode.
set showcmd            "Shows the commnad typed at the bottom.
nnoremap j gj
nnoremap k gk
inoremap jk <Esc>
 "jk is escape in insert mode
colorscheme night-owl           "colorscheme
 set tabstop=4            "number of visual spaces per tab when reading a file
 set softtabstop=4        "number of spaces when editing 
 set expandtab            "spaces are used instead of tabs i.e. tab = 4 spaces.

set incsearch             "search as characters are entered
set hlsearch              "highlight matches
" turns off highlighted search result(s).
nnoremap ,<space> :nohlsearch<Enter>  
set wildmenu   "visual autocompletion of command menu
" set showmatch "Highlights the matching of corresponding bracketts [{()}]

"Move to beginning/end of a line.
nnoremap B 0  
nnoremap E $

"Disabling the movement keys in normal mode to use hjkl instead , xD.
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>
"Disabling Escape in insert mode to use jk instead.
inoremap <Esc> <nop>

"Shortcut for NERDTree
nnoremap <C-n> :NERDTreeToggle<Enter>
"Closing the nerdtree if the last opened file on vim is getting closed, so that
"alone nerdtree is not left opened
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"Split Navigation 
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

map gy :Goyo<CR>

"Bracket Pair colorizer
"let g:rainbow_active = 1

"let g:goyo_width = 720

set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=79
set expandtab
set autoindent
set fileformat=unix
set smartindent

set clipboard=unnamedplus
"Bracket Pair colorizer

nnoremap <F5> yyp<c-v>$r-   "Underline the text in Normal mode
inoremap <F5> <Esc>yyp<c-v>$r-A     "Underline the text in insert mode

"Prettify json
nnoremap pj :%!python -m json.tool<Enter>

"Fugitive
"nmap <leader>
