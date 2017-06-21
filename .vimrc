set nocompatible    " be iMproved, required
filetype off        " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'rking/ag.vim'
Plugin 'jeffkreeftmeijer/vim-numbertoggle'

" Docs say :PluginInstall after updating .vimrc with a plugin
" However, doesn't seem to work
" Command line version seems to work:
" $ vim +PluginInstall +qall

" Keep Plugin commands between vundle#begin/end

call vundle#end()    " required

filetype on
syntax on
colorscheme wombat256mod
let mapleader=","

nmap <leader>n :NERDTreeToggle<CR>

" Move to the next buffer
nmap <leader>l :bnext<CR>
" Move to the previous buffer
nmap <leader>h :bprevious<CR>
" Show all open buffers and their status
nmap <leader>bl :ls<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:CommandTMaxFiles = 5000
let g:CommandTMaxHeight = 50
let g:CommandTMinHeight = 6
let g:CommandTMatchWindowReverse = 1
" Use letter 't' instead of actual ctrl-p
nmap <leader>t :CtrlP<CR>

" Use letter 'f' for toggle folding
 nnoremap f za
 set fdm=indent
 set fdc=4
 set fdl=1
" set foldlevel=4

" Airline
let g:airline_powerline_fonts=1
let g:airline_section_x=""
let g:airline_section_y="%{strlen(&ft)?&ft:'none'}"
" let g:airline_theme="wombat"

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

" Splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview

set wildignore+=*.swp,*.zip,*.class,*.ser
set laststatus=2
set number
set autoindent
set expandtab
set softtabstop=2
set shiftwidth=2
set laststatus=2
"set mouse=a
