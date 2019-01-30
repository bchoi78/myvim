" Get vimrc from runtime, independent of OS/configs/etc.
function s:getvimrcdir()
    return "/" . join(split($MYVIMRC, "/")[0:-2], "/")
endfunction

let g:session_directory = s:getvimrcdir() . "/sessions"
let g:session_autosave = "yes"
