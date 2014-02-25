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

Bundle 'bling/vim-airline'
Bundle 'hallison/vim-markdown'
Bundle 'rodjek/vim-puppet'
Bundle 'scrooloose/syntastic'
Bundle 'rking/ag.vim'
Bundle 'juvenn/mustache.vim'
Bundle 'kien/rainbow_parentheses.vim'

" Bundle 'tpope/vim-classpath'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-fireplace'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-surround'
Bundle 'guns/vim-clojure-static'
Bundle 'guns/vim-sexp'

Bundle 'vim-scripts/groovy.vim--Ruley'
Bundle 'vim-scripts/groovyindent'
Bundle 'vim-scripts/paredit.vim'
Bundle 'vim-scripts/taglist.vim'

" Color Schemes
Bundle 'vim-scripts/desert.vim'
Bundle 'vim-scripts/molokai'
Bundle 'vim-scripts/tir_black'
Bundle 'altercation/vim-colors-solarized'

colorscheme tir_black

let g:vimclojure#HighlightBuiltins = 1
let g:vimclojure#DynamicHighlighting = 1
let g:vimclojure#ParenRainbow = 1
let g:vimclojure#WantNailgun = 1

au BufRead,BufNewFile *.clj set filetype=clojure
au BufRead,BufNewFile *.pp set filetype=puppet
au BufRead,BufNewFile *.gradle set filetype=groovy

au BufEnter *.clj RainbowParenthesesActivate
au Syntax clojure RainbowParenthesesLoadRound
au Syntax clojure RainbowParenthesesLoadSquare
au Syntax clojure RainbowParenthesesLoadBraces

let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'luna'
set laststatus=2
