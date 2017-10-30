let g:ale_lint_on_insert_leave = 1
let g:ale_python_flake8_options = '--config ~/.config/nvim/plugin/flake8.cfg'
let g:ale_lint_delay = 1000 " 1 second before linting; give me a literal second to finish typing
let g:ale_linters = {'python': ['flake8']}
