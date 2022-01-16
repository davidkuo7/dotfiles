set nocompatible        " be iMproved, required
filetype off            " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plugins
Plugin 'Valloric/YouCompleteMe'
Plugin 'jiangmiao/auto-pairs'
Plugin 'airblade/vim-gitgutter'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set nu      " Enable line numbers

" CPEN Operating Systems Course usages.
" if has('cscope')
"    source $HOME/.vim/plugin/cscope_maps.vim
"    cs add $HOME/ubc/cpen331/os161-teamx/src/cscope.out
" endif

"}}}
" vim-gitgutter"{{{

" This makes the diff updates happen more frequently. The default is 4000.
" This value is measured in ms.
set updatetime=1000

nmap ]h <plug>GitGutterNextHunk
nmap [h <plug>GitGutterPrevHunk

" Now the sign column will always be open
set signcolumn=yes

set backspace=2
set t_Co=256
syntax on
:colorscheme molokai
set tabstop=4
set shiftwidth=4
set expandtab
"set textwidth=80
let &colorcolumn="81,82,"
"highlight colorcolumn ctermbg=red guibg=red
