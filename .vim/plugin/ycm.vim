" YCM Setup
let g:ycm_goto_buffer_command = 'new-tab'
let g:ycm_seed_identifiers_with_syntax = 1 " Use programming language's keywords in autocompletion
let g:ycm_filepath_completion_use_working_dir = 1 " Useful for directories relative to project root
let g:ycm_collect_identifiers_from_tags_files = 1 " Let YCM read tags from Ctags file

let g:ycm_python_interpreter_path = ''
let g:ycm_python_sys_path = []
let g:ycm_extra_conf_vim_data = [
  \  'g:ycm_python_interpreter_path',
  \  'g:ycm_python_sys_path'
  \]
let g:ycm_global_ycm_extra_conf = '~/.config/nvim/plugin/global_extra_conf.py'

" let g:ycm_autoclose_preview_window_after_completion = 1  

