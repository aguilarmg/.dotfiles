set nocompatible
filetype off
let mapleader = ";"

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
    Plugin 'VundleVim/Vundle.vim'
    Plugin 'tpope/vim-fugitive'
    Plugin 'junegunn/vim-easy-align'
    Plugin 'preservim/nerdtree'
    Plugin 'itchyny/lightline.vim'
    Plugin 'rust-lang/rust.vim'
    Plugin 'TovarishFin/vim-solidity'
    Plugin 'iden3/vim-circom-syntax'
    Plugin 'vim-pandoc/vim-pandoc'
    Plugin 'vim-pandoc/vim-pandoc-syntax'
    Plugin 'lervag/vimtex'
call vundle#end()
filetype plugin indent on

syntax on
set autoindent

set t_Co=256
set termguicolors
set background=dark
colorscheme selenized_bw

" Quickly edit/reload the ~/.vimrc file
nnoremap <silent> <leader>ev :e $MYVIMRC<CR>
nnoremap <silent> <leader>rv :so $MYVIMRC<CR>

set backspace=indent,eol,start
set laststatus=2
set noshowmode

set textwidth=80
set number
set formatoptions=tcqrn1
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

set encoding=utf-8

set hlsearch
set incsearch
set ignorecase
set listchars=tab:>>,nbsp:~
set matchpairs+=<:>

" Automatically set the current directory to dir of last opened file
set autochdir

set wildmode=list:longest,full
set wildignorecase
set wildignore=*.o,*.swp

" Split screening things.
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set splitbelow
set splitright

" File writing and closing mappings
nnoremap <silent> <leader>w :w<CR>
nnoremap <silent> <leader>q :q<CR>
nnoremap <silent> <leader>x :x<CR>

" Disable bell sounds
set noeb vb t_vb=

" Enable hidden buffers
set hidden

" Map kj to <Esc>
inoremap <silent> kj <Esc>

" Unbind keys
nmap Q <Nop>

"""""" Plugin configs """"""

" Nerdtree plugin
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>f :NERDTreeFind<CR>

" Rust plugin
let g:rustfmt_autosave = 1

" Lightline plugin
let g:lightline = {
     \ 'colorscheme': 'deus',
     \ }
