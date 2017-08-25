set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle
call vundle#begin()

" This is the Vundle package, which can be found on GitHub.
" For GitHub repos, you specify plugins using the
" 'user/repository' format
Plugin 'gmarik/vundle'

" We could also add repositories with a ".git" extension
Plugin 'scrooloose/nerdtree.git'

Plugin 'minibufexpl.vim'
Plugin 'taglist.vim'
Plugin 'majutsushi/tagbar'

" All of your Plugins must be added before the following line
call vundle#end()

" Now we can turn our filetype functionality back on
filetype plugin indent on

" Configue minibufexpl.vim
let g:miniBufExplMaxSize = 2
let g:miniBufExplStatusLineText = 0
let g:miniBufExplCycleArround = 1

set encoding=utf-8
set number
syntax on

set autoindent
set cindent

set smartindent

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab 

set autowrite

" Highlight search
set hls
set incsearch

set laststatus=2

" Move vertically by visual line
nnoremap j gj
nnoremap k gk

set so=10

set autochdir

" Configure fold
set foldenable
set foldmethod=syntax
set foldlevelstart=10
set foldnestmax=8

set wildmenu
set wildmode=list:longest

" nerdtree
nnoremap <silent> <F4> : NERDTreeToggle<CR>

" Tagbar
nnoremap <silent> <F9> :TagbarToggle<CR>

" Taglist
nnoremap <silent> <F8> :Tlist<CR>

" Short key to navigate windows
noremap <C-J> <C-W>j
noremap <C-K> <C-W>k
noremap <C-H> <C-W>h
noremap <C-L> <C-W>l

