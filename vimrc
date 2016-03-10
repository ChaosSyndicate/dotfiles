set nocompatible                " choose no compatibility with legacy vi
filetype off
syntax enable

set laststatus=2
set encoding=utf-8
set ttyfast
set showcmd                     " display incomplete commands
set nobackup
set nowritebackup
set noswapfile                  "no more backup files
set autoread
set hidden
set history=1000
set lazyredraw
set scrolloff=30

"" General Config
set number                  "shows line numbers
let mapleader=" "
set cursorline
set autoindent
set scrolloff=2
set splitright
set splitbelow
set shiftround
set showmatch
set clipboard=unnamed
set shortmess=a     "Shorten some command mode mesages
set showmatch

"Autocomplete filenames
set wildignore=*.o,*.hi,*.pyc,*.pdf
set wildmenu

"" Whitespace
set nowrap                      " don't wrap lines
set tabstop=4 shiftwidth=4      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode
set backspace=2                 "Backspace behaves like a IDE

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter
nnoremap <leader><space> :nohlsearch<CR>   

"Plugins
call plug#begin('~/.vim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'sheerun/vim-polyglot'  
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/seoul256.vim'
Plug 'morhetz/gruvbox'
Plug 'altercation/vim-colors-solarized'
Plug 'https://github.com/ctrlpvim/ctrlp.vim'
Plug 'vim-scripts/a.vim'
Plug 'scrooloose/syntastic' 
Plug 'scrooloose/nerdtree'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'jiangmiao/auto-pairs'
Plug 'Valloric/YouCompleteMe'
Plug 'mbbill/undotree'
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-repeat'
Plug 'nanotech/jellybeans.vim'
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
call plug#end()

filetype plugin indent on

set t_Co=256
let g:solarized_termtrans = 1
set background=dark
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
let g:solarized_termcolors=256
colorscheme gruvbox

autocmd BufWritePost  ~/.vimrc source ~/.vimrc

"reformat the file
nnoremap g= gg=G``

" move to beginning/end of line
nnoremap B ^
nnoremap E $

"Remap to : to ;
noremap ; :

" Quick way to save file
nnoremap <leader>w :w<CR>

"Ctrl Backspace delete previous word
inoremap <C-BS> <C-W>
cnoremap <C-BS> <C-W>

"Create a new line cmd mode without going to insert
nmap <leader>k O<esc>k0
nmap <leader>j o<esc>j0

"quick esc
inoremap jk <esc>
inoremap kj <esc>

"Jump to begging of line or end
noremap H ^
noremap L $
vnoremap L g_

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
noremap <leader>p :silent! set paste<CR>"*p:set nopaste<CR>
nmap <silent> <leader>h :nohls<CR>

"Auto Pairs
let g:AutoPairsMultilineClose = 0

"Airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'luna'

"Nerdtreee
noremap <F2> :NERDTreeToggle<CR>
inoremap <F2> <ESC>:NERDTreeToggle<CR>
let NERDTreeHighlightCursorline=1
let NERDTreeIgnore = ['tmp', '.yardoc', 'pkg']

"Syntastic
let g:syntastic_mode_map = { 'mode': 'passive' }
let g:syntastic_cpp_compiler = "g++"
let g:syntastic_cpp_compiler_options = ' -std=c++11 -Wall'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"YouCompleteMe
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
let g:ycm_autoclose_preview_window_after_completion = 0
nmap <silent> <leader>jd :YcmCompleter GoTo<CR>

"Undo Tree
let g:undotree_SetFocusWhenToggle=1
nnoremap <silent> <F5> :UndotreeToggle<CR>
