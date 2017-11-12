syntax enable
set number
set rtp+=/usr/local/opt/fzf

set ruler
au Filetype python setl et ts=4 sw=4
au BufReadPost *.cuh set filetype=c
set tabstop=4
set shiftwidth=4
set backspace=indent,eol,start
set incsearch
set showmatch

set nobackup
set noswapfile

set nocompatible              " be iMproved, required
filetype off                  " required

set noeb vb t_vb=


nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

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
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'w0rp/ale'
Plugin 'thinca/vim-quickrun'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'flazz/vim-colorschemes'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/nerdtree'
Plugin 'jceb/vim-orgmode'

let g:ycm_keep_logfiles = 1
let g:ycm_log_level = 'debug'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:show_spaces_that_precede_tabs=1

" let g:airline_theme='badwolf'
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
map <C-o> :NERDTreeToggle<CR>
colorscheme solarized
