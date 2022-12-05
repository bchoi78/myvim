" Add ignore dirs based on list; hopefully doesn't break other repos
let ignore_dirs = ['bower_components', 'node_modules', '.+\\.pyc', '.+\\.proto',]
let ag_prg="ag --vimgrep --smart-case"
for dir in ignore_dirs
    let ag_prg = ag_prg . ' --ignore ' . dir
endfor
let g:ag_prg=ag_prg

command -nargs=+ AgWithQuotes execute "Ag " . "\"" . <q-args> . "\""
command -nargs=+ AgNoTest execute "Ag " . "--ignore *test* " . "\"" . <q-args> . "\""
command -nargs=+ AgNoCompiled execute "Ag " . "--ignore *compiled* " . "\"" <q-args> . "\""
command -nargs=+ AgFileWithQuotes execute "AgFile " . "\"" . <q-args> . "\""
