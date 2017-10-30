" The Usual
set nu
syntax enable
setlocal ffs=unix
set ruler

" Tab Expansion
set autoindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smarttab
set shiftround

" Set wildignore to ignore undsired files
set wildignore+=*/*.pyc

" Search highlight
set nohlsearch

" Color scheme
set background=dark
colo vimbrant

" Remember cursor location
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

" Erase trailing whitespace on write
function CleanTrailingWhitespace()
    if exists('b:noCleanWhitespace')
        return
    endif
    %s/\s\+$//e
endfunction

autocmd BufWritePre *.py call CleanTrailingWhitespace()
