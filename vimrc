set nocompatible
syntax on
filetype off
filetype plugin indent on

set expandtab
set tabstop=2

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'vim-scripts/VimClojure'
Bundle 'vim-scripts/desert.vim'
Bundle 'vim-scripts/molokai'
Bundle 'vim-scripts/tir_black'

colorscheme tir_black

let g:vimclojure#HighlightBuiltins = 1
let g:vimclojure#DynamicHighlighting = 1
let g:vimclojure#ParenRainbow = 1
let g:vimclojure#WantNailgun = 1

au BufRead,BufNewFile *.clj set filetype=clojure
