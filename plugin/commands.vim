" Get vimrc from runtime, independent of OS/configs/etc.
function s:getvimrcdir()
    return "/" . join(split($MYVIMRC, "/")[0:-2], "/")
endfunction
function s:getBookmarkedDirs(current_arg, command_line, cursor_position)
    let a:bookmarks = get(g:, 'local_machine_directory_bookmarks', {})
    let a:matches = []
    for key in keys(a:bookmarks)
        if key =~ a:current_arg
            call add(a:matches, key)
        endif
    endfor 
    return a:matches + split(glob(a:current_arg . '*'), "\n")
endfunction
" Directory Navigation
function s:gotoDir(directory)
    let a:bookmarks = get(g:, 'local_machine_directory_bookmarks', {})
    " Grab bookmark if exists in local machine vars
    if has_key(a:bookmarks, a:directory)
        let a:target = a:bookmarks[a:directory]
    else
        let a:target = a:directory
    endif

    " Change directory to specified target and open NERDTree
    exe "chdir " . a:target
    NERDTree
endfunction
command -nargs=1 -complete=file -complete=customlist,s:getBookmarkedDirs GotoDir call s:gotoDir(<f-args>)

" Open commands for special files/directories
command Vimrc call s:gotoDir(s:getvimrcdir())
command OpenLocalVars exe "e " . g:local_machine_vars
