set nocompatible

" setup plugin dir
call plug#begin('~/.vim/bundle')

Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'preservim/nerdcommenter'
Plug 'fholgado/minibufexpl.vim'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-fugitive'
Plug 'ervandew/supertab'
Plug 'terryma/vim-multiple-cursors'
Plug 'bronson/vim-trailing-whitespace'
Plug 'fatih/vim-go', { 'for': 'go' }
Plug 'rust-lang/rust.vim', { 'for': 'rust' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ludovicchabant/vim-gutentags', { 'for': ['c', 'cpp', 'python', 'php', 'vim'] }
Plug 'lervag/vimtex', { 'for': 'tex' }
Plug 'tangl163/vim-mmixal-fmt', { 'for': 'mmix' }

" Themes
Plug 'tomasiser/vim-code-dark'
Plug 'dracula/vim', { 'as': 'dracula' }

call plug#end()

" Configure minibufexpl.vim
let g:miniBufExplMaxSize=2
let g:miniBufExplCycleArround=1

" Configure supertab
let g:SuperTabDefaultCompletionType="<c-n>"

" Setting auto-formatting with rustfmt
let g:rustfmt_autosave=1

" Setup vim-airline
" let g:airline#extensions#tabline#enabled=1

" set encoding
set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8

" Preventing screen clearing
set t_te=

set t_Co=256
set t_ut=

set number
syntax on
colorscheme codedark

set autoindent
set smartindent
set cindent
set cinoptions+=:0,(0,t0,g0

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

" Move vertically by visual line
nnoremap j gj
nnoremap k gk

set so=10
set autochdir
set ttimeoutlen=100

" Fix BackSpace problem
" set backspace=indent,eol,start

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

" vim-gutentags
let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project']
let g:gutentags_ctags_tagfile = '.tags'
let s:vim_tags = expand('~/.cache/tags')
let g:gutentags_cache_dir = s:vim_tags
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']

if !isdirectory(s:vim_tags)
    silent! call mkdir(s:vim_tags, 'p')
endif

" Short key to navigate windows
noremap <C-J> <C-W>j
noremap <C-K> <C-W>k
noremap <C-H> <C-W>h
noremap <C-L> <C-W>l
