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
set hidden

"" General Config
set number                  "shows line numbers
let mapleader=" "
set cursorline
set scrolloff=2
set splitright
set splitbelow
set shiftround
set showmatch
set wildignore=.*
set clipboard=unnamed

"" Whitespace
set nowrap                      " don't wrap lines
set tabstop=4 shiftwidth=4      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter
nnoremap <leader><space> :nohlsearch<CR>   

"Plugins
call plug#begin('~/.vim/plugged')

Plug 'bling/vim-airline'
Plug 'altercation/vim-colors-solarized'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/syntastic' 
Plug 'scrooloose/nerdtree'
Plug 'Raimondi/delimitMate'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'boucherm/ShowMotion'

call plug#end()

filetype plugin indent on

set t_Co=256
let g:solarized_termtrans = 1
set background=dark
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
let g:solarized_termcolors=256
colorscheme solarized

autocmd BufWritePost  ~/.vimrc source ~/.vimrc

map K <Nop> "No more lookups 

"Create a new line cmd mode without going to insert
nmap <leader>k O<esc>k0
nmap <leader>j o<esc>j0

"quick esc
inoremap jk <esc>
inoremap kj <esc>

"Move splits with vim movement
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

"open vimrc
nmap <leader>v :e $HOME/.vimrc<CR>

"Leader commands
nnoremap <silent> <Leader><Right> :bnext<CR>
nnoremap <silent> <Leader><Left> :bprev<CR>
nnoremap <Leader>w :w<CR>

let g:airline_powerline_fonts = 1
let g:airline_theme = 'luna'

"Nerdtreee
noremap <F2> :NERDTreeToggle<CR>
inoremap <F2> <ESC>:NERDTreeToggle<CR>
let NERDTreeHighlightCursorline=1
let NERDTreeIgnore = ['tmp', '.yardoc', 'pkg']

"Syntastic
let g:syntastic_mode_map = { 'mode': 'passive' }
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" CtrlP
nnoremap <silent> t :CtrlP<cr>
let g:ctrlp_working_path_mode = 2
let g:ctrlp_by_filename = 1
let g:ctrlp_max_files = 600
let g:ctrlp_max_depth = 5

"YouCompleteMe
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"

