set nocompatible
syntax on
filetype off
filetype plugin indent on

set expandtab
set tabstop=2
set shiftwidth=4

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'hallison/vim-markdown'
Bundle 'rodjek/vim-puppet'
Bundle 'scrooloose/syntastic'
Bundle 'rking/ag.vim'
Bundle 'juvenn/mustache.vim'

" Bundle 'tpope/vim-classpath'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-fireplace'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-surround'
Bundle 'guns/vim-clojure-static'

Bundle 'vim-scripts/groovy.vim--Ruley'
Bundle 'vim-scripts/groovyindent'
Bundle 'vim-scripts/paredit.vim'
Bundle 'vim-scripts/taglist.vim'

" Color Schemes
Bundle 'vim-scripts/desert.vim'
Bundle 'vim-scripts/molokai'
Bundle 'vim-scripts/tir_black'

colorscheme tir_black

let g:vimclojure#HighlightBuiltins = 1
let g:vimclojure#DynamicHighlighting = 1
let g:vimclojure#ParenRainbow = 1
let g:vimclojure#WantNailgun = 1

au BufRead,BufNewFile *.clj set filetype=clojure
au BufRead,BufNewFile *.pp set filetype=puppet
au BufRead,BufNewFile *.gradle set filetype=groovy
