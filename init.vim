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

" Git integration
Plug 'tpope/vim-fugitive'

" Display
Plug 'vim-airline/vim-airline'

call plug#end()


" Set filetype plugins on
filetype plugin on

" Use these for things that are specific to each local machine. Used for
" various commands, where applicable
let g:local_machine_vars='~/.config/local_nvim_vars.vim'
exe "silent! source " . g:local_machine_vars
