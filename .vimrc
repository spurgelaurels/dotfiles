syntax on
filetype plugin indent on

" Solarized
set background=dark
"colorscheme solarized

" Plug 'dylanaraps/wal.vim'
colorscheme wal

" swap files to a common spot
set dir=~/.vim/_swap//

" backups to a common spot
set backup
set backupdir=~/.vim/_backup/

" undo
set undodir=~/.vim/_undodir/

" wildmenu
set wildmenu


" STOP BEEPING, FUCK
set vb t_vb=

set incsearch
set ignorecase
set smartcase
set hlsearch
set expandtab
set tabstop=2
set shiftwidth=2
set number
set relativenumber 
set wrap lbr 


" SPELL CHECK 
set spell spelllang=en


" cancel search buffer 
nmap \q :nohlsearch

" line numbers shortcut
nmap \l :setlocal number!


autocmd FileType markdown
     \ setlocal spell wrap |

 
noremap  <buffer> <silent> k gk
noremap  <buffer> <silent> j gj
noremap  <buffer> <silent> 0 g0
noremap  <buffer> <silent> $ g$


" timeout
autocmd InsertEnter * set timeoutlen=50
autocmd InsertLeave * set timeoutlen=750

" exit insert with jk/kj
inoremap jk <esc>
inoremap kj <esc>

" :W works too
nnoremap :W<cr> :w<cr>


" Split navs
nnoremap <C-J> <C-W><C-J><C-W>_
nnoremap <C-K> <C-W><C-K><C-W>_
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" we don't need no stinkin' arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Folding Functions
" set foldmethod=indent
" set foldlevel=1
" set foldclose=all
