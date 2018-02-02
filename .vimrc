set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle
call vundle#begin()

Plugin 'gmarik/vundle'
Plugin 'scrooloose/nerdtree.git'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-fugitive'
Plugin 'ervandew/supertab'

call vundle#end()

" Turn our filetype functionality back on
filetype plugin indent on

" Configure minibufexpl.vim
let g:miniBufExplMaxSize = 2
let g:miniBufExplCycleArround = 1

" Configure supertab
let g:SuperTabDefaultCompletionType = "<c-n>"

" set encoding
set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8

colorscheme desert
set number
syntax on

set autoindent
set smartindent
set cindent
set cinoptions+=:0
set cinoptions+=(0

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab 

set autowrite

" Highlight search
set hls
set incsearch

" Custom statusline
set laststatus=2
set statusline=%<%t\ \ \ \ \CWD:\ %{getcwd()}\ %h%m%r%=%-24.(%b\ Ox%B\ \ %l,%c%V%)\ %P

" function! MyStatusLine()
"     let dirname = getcwd()
"     return fnamemodify(l:dirname, ':p:h')
" endfunction

" Move vertically by visual line
nnoremap j gj
nnoremap k gk

set so=10

set autochdir

" Fix BackSpace problem
set backspace=indent,eol,start

" Configure spell check, and let the background color to be black.
" set spell
" hi SpellBad cterm=underline ctermbg=16

" Configure fold
set foldenable
set foldmethod=syntax
set foldlevelstart=10
set foldnestmax=8

set wildmenu
set wildmode=list:longest

" nerdtree
nnoremap <silent> <F4> :NERDTreeToggle<CR>

" Tagbar
nnoremap <silent> <F9> :TagbarToggle<CR>

" Short key to navigate windows
noremap <C-J> <C-W>j
noremap <C-K> <C-W>k
noremap <C-H> <C-W>h
noremap <C-L> <C-W>l

