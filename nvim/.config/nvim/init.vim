" line number
set number
set relativenumber

" indentation
function! SetSpacesIndentation(numspaces)
    if a:numspaces =~ '\D'
        echoerr "Expected to get a number of spaces"
        return
    endif
    set smartindent
    set expandtab
    execute "set tabstop=" . a:numspaces
    execute "set shiftwidth=" . a:numspaces
endfunction
command! -nargs=1 Spaces call SetSpacesIndentation(<args>)
Spaces 4

" buffers
set hidden

" set visual line at column 80
set colorcolumn=80
