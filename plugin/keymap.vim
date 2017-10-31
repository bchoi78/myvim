" Plugins

" NerdTree
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap D :GotoDir 

" YouCompleteMe 
" GoTo
nnoremap <C-g> :YcmCompleter GoTo<cr>
inoremap <C-g> <Esc>:YcmCompleter GoTo<cr>
" GetDoc
nnoremap <C-d> :YcmCompleter GetDoc<cr>
inoremap <C-g> <C-o>:YcmCompleter GetDoc<cr>

" ALE
" Next Error - ALT+J
nmap ∆ <Plug>(ale_next_wrap)   
" Previous  Error - ALT+K
nmap ˚ <Plug>(ale_previous_wrap)

" File Search
nnoremap G :Ag 
nnoremap F :AgFile 
nmap ff <Plug>window:quickfix:toggle


""""""""""""""""""""""""""""""""""""""""""""""""

" Internal

" Tab Navigation
nnoremap <C-t> :tabe<CR>
nnoremap <S-t> :tabe<space>
nnoremap <C-j> gt
nnoremap <C-k> gT

" Window Pane Navigation
nnoremap <S-j> <C-w>j
nnoremap <S-k> <C-w>k
nnoremap <S-h> <C-w>h
nnoremap <S-l> <C-w>l
