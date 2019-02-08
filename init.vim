" Plugins (vim-plug)
call plug#begin('~/.config/nvim/plug')

" Directory Tree navigation
Plug 'scrooloose/nerdtree'

" Languages
Plug 'isRuslan/vim-es6'
Plug 'kchmck/vim-coffee-script'
Plug 'digitaltoad/vim-pug'
Plug 'leafgarland/typescript-vim'
Plug 'tmux-plugins/vim-tmux'
Plug 'elixir-editors/vim-elixir'
Plug 'Vimjas/vim-python-pep8-indent'

" Completion Engine
Plug 'Valloric/YouCompleteMe', {'do': './install.py'}
Plug 'majutsushi/tagbar'

" Linter
Plug 'w0rp/ale'

" Filesearch
Plug 'rking/ag.vim'
Plug 'ctrlpvim/ctrlp.vim'

" Motions
Plug 'chaoren/vim-wordmotion'

" Keymaps
Plug 'drmingdrmer/vim-toggle-quickfix'

" Git integration
Plug 'tpope/vim-fugitive'

" Display
Plug 'vim-airline/vim-airline'
Plug 'tmux-plugins/vim-tmux-focus-events'

" Session management
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'

call plug#end()


" Set filetype plugins on
filetype plugin on

" Use these for things that are specific to each local machine. Used for
" various commands, where applicable
let g:local_machine_vars='~/.config/local_nvim_vars.vim'
exe "silent! source " . g:local_machine_vars
