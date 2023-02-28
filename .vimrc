"-----------------------------------------
" My .vimrc
"----------------------------------------- 

"-----------------------------------------
" Basic Settings
"----------------------------------------- 

" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Turn syntax highlighting on.
syntax on

" Add numbers to each line on the left-hand side.
set number

" Highlight cursor line underneath the cursor horizontally and vertically.
set cursorline
set cursorcolumn

set wildmenu
set wildmode=list:longest

set shiftwidth=4
set tabstop=4
set expandtab

set incsearch
set hlsearch

set ignorecase
set smartcase

"-----------------------------------------
" Vim-plug
"-----------------------------------------

" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Declare the list of plugins.
Plug 'sainnhe/gruvbox-material'
Plug 'voldikss/vim-floaterm'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'vim-python/python-syntax'
Plug 'preservim/nerdtree'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

"-----------------------------------------
" gruvbox-material settings
"----------------------------------------- 

set termguicolors
set background=dark
let g:gruvbox_material_background = 'hard'
let g:gruvbox_material_better_performance = 1
let g:gruvbox_material_enable_italic = 1
let g:gruvbox_material_foreground = 'mix'
let g:gruvbox_material_cursor = 'aqua'

colorscheme gruvbox-material

"-----------------------------------------
" airline setting
"----------------------------------------- 

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

autocmd VimEnter * NERDTree


let g:python_highlight_all = 1

imap <F5> <Esc>:w<CR>:!clear;python %<CR>
