" Show matching brackets
set showmatch
" Enable mouse usage
set mouse=v

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin for colored status bar
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Plugin for Solidity syntax highlighting
Plugin 'tomlion/vim-solidity'

" Plugin for gitgutter
Plugin 'airblade/vim-gitgutter'

" Plugin for alignment
Plugin 'godlygeek/tabular'

call vundle#end()            " required
filetype plugin indent on    " required

" Colorscheme 
colorscheme ron
" Map leader to ;
let mapleader = ";"

" Automatically wrap text that extends beyond the screen length
set wrap

" Text stuff
set textwidth=99
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set smarttab
set expandtab
set noshiftround

" Display 5 lines above/beow the cursor when scrolling with a mouse
set scrolloff=5

" Fixes common backspace problems
set backspace=indent,eol,start

" Speed up scrolling in Vim
set ttyfast

" Status bar
set laststatus=2
" Update time (in ms)
set updatetime=100

" Highlight matching pairs of brackers. Use the '%' chatacter to jump between them.
set matchpairs+=<:>

" Display different types of white spaces
" set list
" set listchars=

" Set line numbers
set nonumber
" Set relative line numbers
set norelativenumber

" Set status line display
" set statusline=%F%m%r%h%w\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ [BUFFER=%n]\ %{strftime('%c')}

" Encoding
set encoding=utf-8

" Highlight matching search patterns
set hlsearch
" Enable incremental search
set incsearch
" Do case insensitive matching
set ignorecase
" Set smart case matching
set smartcase 

" Quickly edit/reload the ~/.vimrc file
nnoremap <silent> <leader>ev :e $MYVIMRC<CR>
nnoremap <silent> <leader>rv :so $MYVIMRC<CR>

" Map kj to <Esc>
inoremap <silent> kj <Esc>

" File writing and closing mappings 
nnoremap <silent> <leader>w :w<CR>
nnoremap <silent> <leader>q :q<CR>
nnoremap <silent> <leader>x :x<CR>

" Disable bell sounds
set noeb vb t_vb=

" Enable hidden buffers
set hidden

" Set split screening stuff
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <silent> <leader>1 :Vex! .<CR>
set splitbelow
set splitright

" Buffer switching
nnoremap <leader>b :buffer *
nnoremap gb :ls<CR>:b<Space>
nnoremap vgb :ls<CR>:vertical<Space>sb<Space>
nnoremap <leader>ls :ls<CR>

" Set wildmenu
set wildmode=longest,list
set wildmenu
set wildignorecase

" Set a mapping for **
nnoremap <leader>e :edit **/*
nnoremap <leader>v :vsp **/*
nnoremap <leader>o :sp **/*

" Highlight current line, but only in active window
" augroup CursorLineOnlyInActiveWindow
"   autocmd!
"   autocmd VimEnter,WinEnter,BufWinEnter * setlocal cursorline
"   autocmd WinLeave * setlocal nocursorline
" augroup END

" Airline config
let g:airline_section_y = 'BN: %{bufnr("%")}'
let g:airline#extensions#tabline#enabled = 0
