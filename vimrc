set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'scrooloose/nerdtree'
Plugin 'ianva/vim-youdao-translater' " Youdao translator
Plugin 'vim-airline'

" plugin from http://vim-scripts.org/vim/scripts.html

" Git plugin not hosted on GitHub

" git repos on your local machine (i.e. when working on your own plugin)

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.

" Avoid a name conflict with L9


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"

" Basic config
syntax on
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab
set hlsearch

" theme
set t_Co=256
colorscheme molokai

filetype plugin on  
autocmd FileType python set omnifunc=pythoncomplete#Complete  
autocmd FileType javascrīpt set omnifunc=javascriptcomplete#CompleteJS  
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags  
autocmd FileType css set omnifunc=csscomplete#CompleteCSS  
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags  
autocmd FileType php set omnifunc=phpcomplete#CompletePHP  
autocmd FileType c set omnifunc=ccomplete#Complete  
   
""""""""""""""""""""""""""""""
" pydiction
""""""""""""""""""""""""""""""
let g:pydiction_location='~/.vim/tools/pydiction/complete-dict' 

""""""""""""""""""""""""""""""
" F7 NERDTree
""""""""""""""""""""""""""""""
map <F7> :NERDTreeToggle<CR>
imap <F7> <ESC>:NERDTreeToggle<CR>

""""""""""""""""""""""""""""""
" airline
""""""""""""""""""""""""""""""
set encoding=utf-8
"let g:airline_theme             = 'powerlineish'
let g:airline_enable_branch     = 1
let g:airline_detect_whitespace = 0

" vim-powerline symbols
"let g:airline_branch_prefix     = ''
set laststatus=2
