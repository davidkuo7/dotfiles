set nocompatible        " be iMproved, required
filetype off            " required

set tabstop=4           " Tabs look like 4 spaces
set softtabstop=4       " Hitting 'tab' indents by 4
set shiftwidth=4        " Indent now corresponds to a single tab
set expandtab           " Insert space characters when pressing tab key

set backspace=2         " Allows backspacing over all options in insert mode

set smartindent         " Smart indenting
set nowrap              " Turn off text wrapping

set nohlsearch          " Turn off highlighting all matching search terms
set incsearch           " Turn on incremental highlighting when entering search term

set nu                  " Enable line numbers
set relativenumber      " Relative line numbers to cursor

set scrolloff=8         " Always show 8 lines min from both ends of scrolling
set updatetime=50       " Fast update time

set colorcolumn=""      " Don't color any columns (useful if you want to color the 80th column to show it)
set signcolumn=yes      " Now the sign column will always be open

set t_Co=256            " Support 256 colors
set showcmd             " Show commands

let mapleader=" "       " Set leader key as space for custom commands

" Key remaps

" Move selection up/down
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" J in normal mode doesn't move cursor any more
nnoremap J mzJ`z

" Page up/down keeps cursor in the middle of the screen
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz

" Searching next term also keeps them in the middle of the screen
nnoremap n nzzzv
nnoremap N Nzzzv

" Use space then p to paste over without losing the copied word
xnoremap <Leader>p "_dP"

" Use space then y to copy to system clipboard
nnoremap <Leader>y "+y"
vnoremap <Leader>y "+y"
nnoremap <Leader>Y "+Y"

" Use space then d to delete without copying/saving the deleted terms
nnoremap <Leader>d "_d"
vnoremap <Leader>d "_d"

" Unbind Q
nnoremap Q nop

" Rebind H and L to beginning/end of line
nnoremap H ^
nnoremap L $

packadd! dracula
syntax enable
colorscheme dracula
