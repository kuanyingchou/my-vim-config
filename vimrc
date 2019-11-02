syntax on
filetype plugin indent on
" set relativenumber 
set number
set encoding=utf8
set ruler

" colors
color slate
set background=dark

" font
set guifont=Inconsolata:h16

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
"set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set softtabstop=4

" auto indent
set ai 

" smart indent
set si 

" wrap lines
set nowrap 

" long lines as break lines
map j gj
map k gk

" delete to blackhole buffer before put
vnoremap p "_dP

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

" project-specific rc
set exrc
set secure

" show whitespaces
set listchars=tab:¦·,extends:…,precedes:‹,nbsp:·,trail:·
set list

" space between lines
set linespace=3

let &colorcolumn=join(range(81,999),",")
" highlight ColorColumn ctermbg=246 guibg=#333333

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" plug auto installtion
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" plug
call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
map <C-p> :Files<CR>
map <C-n> :Buffers<CR>
map <C-s> :BLines<CR>
map <S-C-s> :Ag<CR>

Plug 'scrooloose/nerdtree'
map <C-b> :NERDTreeToggle<CR>

Plug 'tpope/vim-surround'
Plug 'flazz/vim-colorschemes'
Plug 'tomtom/tcomment_vim'
Plug 'lambdatoast/elm.vim'
" Plug 'easymotion/vim-easymotion'
Plug 'udalov/kotlin-vim'
Plug 'tpope/vim-fugitive'
Plug 'zivyangll/git-blame.vim' 

call plug#end()

" [ easy motion
"let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
"map <Leader> <Plug>(easymotion-overwin-f)

" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
"map <Leader> <Plug>(easymotion-overwin-f2)

" Turn on case insensitive feature
"let g:EasyMotion_smartcase = 1
" ] 

" [ git blame
nnoremap <Leader>b :<C-u>call gitblame#echo()<CR> 
" ]

" colorscheme
colorscheme badwolf

