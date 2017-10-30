"=============================================
"    Name: riv.vim
"    File: riv.vim
"  Author: Rykka G.F
"  Update: 2012-06-09
"=============================================
if exists("g:_riv_loaded") | finish | endif
let g:_riv_loaded = 1

call riv#init()

" Turn off folding
set nofoldenable
let g:riv_disable_folding = 1

" riv jankness
set bs=indent,eol,start
set backspace=2
