" Plugins (vim-plug)
call plug#begin('~/.config/nvim/plug')

" Directory Tree navigation
Plug 'scrooloose/nerdtree'

" Languages
Plug 'isRuslan/vim-es6'
Plug 'kchmck/vim-coffee-script'
Plug 'digitaltoad/vim-pug'
Plug 'leafgarland/typescript-vim'

" Completion Engine
Plug 'Valloric/YouCompleteMe'

" Linter
Plug 'w0rp/ale'

" Filesearch
Plug 'rking/ag.vim'

" Keymaps
Plug 'drmingdrmer/vim-toggle-quickfix'

call plug#end()


" Set filetype plugins on
filetype plugin on
