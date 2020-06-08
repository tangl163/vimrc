set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle
call vundle#begin()

Plugin 'gmarik/vundle'
Plugin 'scrooloose/nerdtree.git'
Plugin 'scrooloose/nerdcommenter'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-fugitive'
Plugin 'ervandew/supertab'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'scrooloose/nerdcommenter'
Plugin 'fatih/vim-go'

call vundle#end()

" Turn our filetype functionality back on
filetype plugin indent on

" Configure minibufexpl.vim
let g:miniBufExplMaxSize=2
let g:miniBufExplCycleArround=1

" Configure supertab
let g:SuperTabDefaultCompletionType="<c-n>"

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
set cinoptions+=:0,(0,t0

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
set statusline=%<%t\ \ \ \ %{MyStatusLine()}\ %h%m%r%=%-24.(%b\ Ox%B\ \ %l,%c%V%)\ %P

function! MyStatusLine()
    return "DIR: " . expand('%:p:h')
endfunction

augroup DimStatusLine
  autocmd!
  autocmd WinEnter * hi StatusLine ctermfg=251 guifg=#9e9e9e
  autocmd WinLeave * hi StatusLineNC ctermfg=237 guifg=#e9e9e9
augroup END

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

set noswapfile

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

