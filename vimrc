syntax on
filetype plugin indent on
" set relativenumber 
set number
set encoding=utf8
set ruler

" colors
color slate
set background=dark

" enable mouse
set mouse=a

" disable auto comment insertion
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" retain cursor position after yank
vmap y ygv<Esc>

" for showing filename
set laststatus=2

" use system clipboard
set clipboard=unnamedplus
set clipboard+=unnamed

" fix backspace
set backspace=2

" no backup
set nobackup
set nowb
set noswapfile

" search
set ignorecase
set smartcase

" tabs
set expandtab
set smarttab
set shiftwidth=2
set tabstop=2
set softtabstop=2

" auto indent
set ai 

" smart indent
set si 

" wrap lines
set wrap 

" long lines as break lines
map j gj
map k gk

" status line
set laststatus=2

" search
set hlsearch
set incsearch 

" auto paste mode
let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"
inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()
function! XTermPasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""
endfunction

" plug
call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
map <C-p> :Files<CR>
map <C-n> :Buffers<CR>

Plug 'scrooloose/nerdtree'
map <C-b> :NERDTreeToggle<CR>

Plug 'tpope/vim-surround'
Plug 'flazz/vim-colorschemes'
Plug 'tomtom/tcomment_vim'

call plug#end()

