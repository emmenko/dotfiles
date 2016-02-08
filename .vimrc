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

" Fuzzy file, buffer, mru, tag, etc finder
Plugin 'ctrlpvim/ctrlp.vim'
" Filesystem tree explorer
Plugin 'scrooloose/nerdtree'
" Run the `ack` search tool from Vim
Plugin 'mileszs/ack.vim'
" The best Git wrapper
Plugin 'tpope/vim-fugitive'
" Syntax checking hacks
Plugin 'scrooloose/syntastic'
" Easy file navigation
Plugin 'easymotion/vim-easymotion'
" Collection of colorscheme
Plugin 'flazz/vim-colorschemes'

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

set clipboard=unnamed
set cursorline
set encoding=utf-8
set expandtab
set hlsearch
set ignorecase
set lazyredraw " Avoid scrolling problems
set modelines=0
set nobackup
set noswapfile
set nowrap
set nowritebackup
set number
set scrolloff=3
set shiftwidth=2
set softtabstop=2
set smartcase
set synmaxcol=128
set tabstop=2
set ttyfast
set ttyscroll=15

colorscheme obsidian

syntax on

" Automatic commands
if has("autocmd")
  autocmd BufNewFile,BufWritePre * set eol
  " Enable file type detection
  filetype on
  " Treat .json files as .js
  autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript
  " Treat .md files as Markdown
  autocmd BufNewFile,BufRead *.md setlocal filetype=markdown
endif

" Strip trailing whitespace (,ss)
function! StripWhitespace()
  let save_cursor = getpos(".")
  let old_query = getreg('/')
  :%s/\s\+$//e
  call setpos('.', save_cursor)
  call setreg('/', old_query)
endfunction
noremap <leader>ss :call StripWhitespace()<CR>

" NERDTree
nmap <leader>n :NERDTreeToggle<CR>
let NERDTreeHighlightCursorline=1
let NERDTreeIgnore = ['tmp', '.yardoc', 'pkg']

" CtrlP
nnoremap <silent> t :CtrlP<cr>
let g:ctrlp_show_hidden = 1
let g:ctrlp_working_path_mode = 2
let g:ctrlp_by_filename = 1
let g:ctrlp_max_files = 600
let g:ctrlp_max_depth = 5
