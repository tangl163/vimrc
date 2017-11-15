set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=$HOME/vimfiles/bundle/vundle
call vundle#begin('$HOME/vimfiles/bundle/vundle')

Plugin 'gmarik/vundle'
Plugin 'scrooloose/nerdtree.git'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'taglist.vim'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-fugitive'
Plugin 'ervandew/supertab'

" All of your Plugins must be added before the following line
call vundle#end()

" Now we can turn our filetype functionality back on
filetype plugin indent on

let $LANG = 'en'  "set message language
set langmenu=en   "set menu's language of gvim. no spaces beside '='

colorscheme murphy
set guifont=Lucida_Console:h10:cANSI

" Configure minibufexpl.vim
let g:miniBufExplMaxSize = 2
let g:miniBufExplCycleArround = 1

" set encoding
set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8

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

" Configure spell check, and let the background color to black.
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

" Taglist
nnoremap <silent> <F8> :Tlist<CR>

" Short key to navigate windows
noremap <C-J> <C-W>j
noremap <C-K> <C-W>k
noremap <C-H> <C-W>h
noremap <C-L> <C-W>l

" Toggle Menu and Toolbar
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar

map <silent> <F2> :if &guioptions =~# 'T' <Bar>
        \set guioptions-=T <Bar>
        \set guioptions-=m <bar>
    \else <Bar>
        \set guioptions+=T <Bar>
        \set guioptions+=m <Bar>
    \endif<CR>

source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

language messages en_us.utf-8
 
" max size
au GUIEnter * simalt ~x

source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin
