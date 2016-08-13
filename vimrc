set nocompatible
syntax on
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'vim-airlineg/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'rodjek/vim-puppet'
Plugin 'scrooloose/syntastic'
Plugin 'rking/ag.vim'
Plugin 'juvenn/mustache.vim'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'elzr/vim-json'
Plugin 'rizzatti/dash.vim'
Plugin 'chase/vim-ansible-yaml'

Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'

" Bundle 'tpope/vim-classpath'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-fireplace'
Plugin 'tpope/vim-leiningen'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-projectionist'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-sexp-mappings-for-regular-people'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'guns/vim-clojure-static'
Plugin 'guns/vim-clojure-highlight'
Plugin 'guns/vim-sexp'
Plugin 'typedclojure/vim-typedclojure'
Plugin 'kien/ctrlp.vim'

Plugin 'hashivim/vim-terraform'

Plugin 'tfnico/vim-gradle'
Plugin 'vim-scripts/paredit.vim'
Plugin 'vim-scripts/taglist.vim'

" Color Schemes
Plugin 'vim-scripts/desert.vim'
Plugin 'vim-scripts/molokai'
Plugin 'vim-scripts/tir_black'
Plugin 'altercation/vim-colors-solarized'

" Elixir
Plugin 'elixir-lang/vim-elixir'
" Rust
Plugin 'rust-lang/rust.vim'


call vundle#end()
filetype plugin indent on

set expandtab
set tabstop=2
set shiftwidth=4
set laststatus=2

colorscheme tir_black
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'monochrome'

" Shortcuts for connecting to differenct cljs environments
command! Piggie :Piggieback (cemerick.austin/exec-env)
command! Biggie :Piggieback (cemerick.austin/exec-env :exec-cmds ["open" "-ga" "/Applications/Google Chrome.app"])
command! Wiggie :Piggieback (weasel.repl.websocket/repl-env :ip "0.0.0.0" :port 9001)
command! Ciggie :Piggieback (do (require 'cljs.repl.browser) (cljs.repl.browser/repl-env :port 9001))

" Shortcuts for using stuart sierra's components
function! SendToREPL(sexp)
    call fireplace#session_eval(a:sexp)
endfunction

nnoremap <Leader>fr :call SendToREPL('(reloaded.repl/reset)')<CR>
nnoremap <Leader>fg :call SendToREPL('(reloaded.repl/go)')<CR>
nnoremap <Leader>fs :call SendToREPL('(reloaded.repl/stop)')<CR>

