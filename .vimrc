"Change leader to ,
let mapleader=","

set nocompatible
set hidden

"Syntax highlighting
syntax on

"Auto indent
set autoindent

"Vim colorscheme XORIA256
colorscheme xoria256

"Load pathogen so we can install plugins
execute pathogen#infect()

"Indentation settings
filetype plugin indent on
set tabstop=2
set shiftwidth=2
set expandtab

"enable deleting over line breaks
set backspace=2

"enable mouse interation
set mouse=a
"set paste

"enable line numbers
set number

"airline settings
set laststatus=2
let g:airline_theme='bubblegum'

"Autocomplete ?
set omnifunc=phpcomplete#CompletePHP
set omnifunc=csscomplete#CompleteCSS
autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP

autocmd BufNewFile,BufRead *.scss             set ft=scss.css

let g:ycm_auto_trigger = 1
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_semantic_triggers =  {
  \   'c' : ['->', '.'],
  \   'objc' : ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s',
  \             're!\[.*\]\s'],
  \   'ocaml' : ['.', '#'],
  \   'cpp,objcpp' : ['->', '.', '::'],
  \   'perl' : ['->'],
  \   'php' : ['->', '::'],
  \   'cs,java,javascript,typescript,d,python,perl6,scala,vb,elixir,go' : ['.'],
  \   'ruby' : ['.', '::'],
  \   'lua' : ['.', ':'],
  \   'erlang,css' : [':'],
  \ }

"Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
