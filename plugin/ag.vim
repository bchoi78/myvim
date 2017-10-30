" Add ignore dirs based on list; hopefully doesn't break other repos
let ignore_dirs = ['docs', 'log', 'data', 'bower_components', 'node_modules']
let ag_prg="ag --vimgrep"
for dir in ignore_dirs
    let ag_prg = ag_prg . ' --ignore-dir ' . dir
endfor
let ignore_args = ['*.pyc']
for arg in ignore_args
    let ag_prg = ag_prg . ' --ignore ' . arg
endfor
let g:ag_prg=ag_prg



