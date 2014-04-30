set nocompatible                " choose no compatibility with legacy vi
filetype off
syntax enable

set laststatus=2
set encoding=utf-8
set showcmd                     " display incomplete commands
set nobackup
set nowritebackup
set noswapfile                  "no more backup files
set wildmenu

"airline settings
let g:airline_theme = 'luna'

set rtp+=~/.vim/bundle/vundle/

call vundle#rc()

"" General Config
set number                  "shows line numbers
let mapleader=" "
set cursorline
set scrolloff=2
set splitright
set splitbelow
set shiftround
set showmatch
set splitbelow
set splitright
set wildignore=.*
set clipboard=unnamed

"" Whitespace
set nowrap                     " don't wrap lines
set tabstop=4 shiftwidth=4   " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter
nnoremap <leader><space> :nohlsearch<CR>    "hide hightligthing

"Bundles
Bundle 'gmarik/vundle'
Bundle 'bling/vim-airline'
Bundle 'altercation/vim-colors-solarized'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/syntastic' 
Bundle 'Valloric/YouCompleteMe'

filetype plugin indent on

set background=dark
set t_Co=256
let g:solarized_contrast = "high"
let g:solarized_visibility = "high"
let g:solarized_termcolors = 256
colorscheme solarized


autocmd BufWritePost  ~/.vimrc source ~/.vimrc

map K <Nop> "No more lookups 

"quick esc
inoremap jk <esc>
inoremap kj <esc>

"Move splits with vim movement
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

"toggle nerdtree
nmap <silent> <c-e> :NERDTreeToggle<CR>

"open vimrc
nmap <leader>v :e $HOME/.vimrc<CR>

"Syntastic
let g:syntastic_mode_map = { 'mode': 'passive' }

" CtrlP
nnoremap <silent> t :CtrlP<cr>
let g:ctrlp_working_path_mode = 2
let g:ctrlp_by_filename = 1
let g:ctrlp_max_files = 600
let g:ctrlp_max_depth = 5
