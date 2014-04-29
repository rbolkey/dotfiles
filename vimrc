set nocompatible
syntax on
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'bling/vim-airline'
Plugin 'hallison/vim-markdown'
Plugin 'rodjek/vim-puppet'
Plugin 'scrooloose/syntastic'
Plugin 'rking/ag.vim'
Plugin 'juvenn/mustache.vim'
Plugin 'kien/rainbow_parentheses.vim'

Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'

" Bundle 'tpope/vim-classpath'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fireplace'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'guns/vim-clojure-static'
Plugin 'guns/vim-sexp'

Plugin 'vim-scripts/groovy.vim--Ruley'
Plugin 'vim-scripts/groovyindent'
Plugin 'vim-scripts/paredit.vim'
Plugin 'vim-scripts/taglist.vim'

" Color Schemes
Plugin 'vim-scripts/desert.vim'
Plugin 'vim-scripts/molokai'
Plugin 'vim-scripts/tir_black'
Plugin 'altercation/vim-colors-solarized'

call vundle#end()
filetype plugin indent on

set expandtab
set tabstop=2
set shiftwidth=4

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
