syntax on
filetype plugin indent on
set relativenumber 
set number
set encoding=utf8
set ruler

" disable auto comment insertion
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" retain cursor position after yank
vmap y ygv<Esc>

" for showing filename
set laststatus=2

" use system clipboard
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

"""""""""""""""""""""""""""""""""
" pathogen
execute pathogen#infect()

" ctrlp
set runtimepath^=~/.vim/bundle/ctrlp.vim
map <C-i> :CtrlPBuffer<CR>
let g:ctrlp_max_files=0 

" use silver searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" nerdtree
map <C-b> :NERDTreeToggle<CR>

