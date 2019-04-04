set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'mattn/emmet-vim'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'majutsushi/tagbar'
Plugin 'fatih/vim-go'
Plugin 'Valloric/YouCompleteMe'
Plugin 'jiangmiao/auto-pairs'
Plugin 'vim-syntastic/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'dracula/vim'
call vundle#end()            " required

filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

autocmd filetype cpp nnoremap <F5> :w <bar> !g++-4.8 -ulimit -Wall -Wno-unused-result -std=c++11   -O2   % -o %:r && ./%:r <CR>
autocmd filetype c nnoremap <F5> :w <bar> !gcc -ulimit -Wall -Wno-unused-result  -O2 % -o %:r && ./%:r <CR>
autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
syntax on
set nu
set clipboard=unnamedplus
set mouse=a
set tabstop=4
set autoindent
set shiftwidth=4
set softtabstop=4
set smarttab
set expandtab
set smartcase
set t_Co=256
set background=dark
set noswapfile
map <C-a> <esc>ggVG<CR>
autocmd filetype java nnoremap <F5> :w <bar> !javac % && java -enableassertions %:r <CR>
autocmd filetype python nnoremap <F5> :w <bar> !python % <CR>
autocmd filetype perl nnoremap <F5> :w <bar> !perl % <CR>
autocmd filetype go nnoremap <F5> :w <bar> !go build % && ./%:r <CR>
autocmd FileType javascript set formatprg=prettier\ --stdin
set belloff=all
syntax on
color dracula
