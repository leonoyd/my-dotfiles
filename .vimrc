set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'itchyny/lightline.vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'joshdick/onedark.vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'ervandew/supertab'
" All of your Plugins must be added before the following line
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
set laststatus=2"
set number
syntax enable
map <C-n> :NERDTreeToggle<CR>
map <S-x> :q<CR>
map <S-h> 10h
map <S-j> 10j
map <S-k> 10k
map <S-l> 10l
map :q! :q1
map f g*
map s 5j
map S 5
map a A
map F g#

:nnoremap gr :grep -R --include=*.{c,h,cpp,hpp} <cword> *<CR>
:nnoremap Gr :grep -R --include=*.{c,h,cpp,hpp} <cword> %:p:h/*<CR>
:nnoremap gR :grep -R --include=*.{c,h,cpp,hpp} '\b<cword>\b' *<CR>
:nnoremap GR :grep -R --include=*.{c,h,cpp,hpp} '\b<cword>\b' %:p:h/*<CR>

set tags=./tags;
"let g:molokai_original = 1"
colorscheme onedark 
