set nocompatible        " be iMproved, required
filetype off            " required

set nu                  " Enable line numbers
set signcolumn=yes      " Now the sign column will always be open
set backspace=2         " Allows backspacing over all options in insert mode
set t_Co=256            " Support 256 colors
set tabstop=4           " Tabs look like 4 spaces
set shiftwidth=4        " Indent now corresponds to a single tab
set expandtab           " Insert space characters when pressing tab key

packadd! dracula
syntax enable
colorscheme dracula
