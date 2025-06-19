if has('win32')
    let &shell= '"' . $USERPROFILE . '\opt\w64devkit\bin\sh.exe" -l'
endif

if has('gui_running')
    """ colorscheme
    set guifont=Victor\ Mono:h16,Cascadia\ Code:h14
    let g:solarized_italic=1
    let g:solarized_visibility="high"
    let g:solarized_contrast="high"
    syntax on
    set background=dark
    colorscheme ef-elea-dark

    function! LinterStatus() abort
        let l:counts = ale#statusline#Count(bufnr(''))

        let l:all_errors = l:counts.error + l:counts.style_error
        let l:all_non_errors = l:counts.total - l:all_errors

        return l:counts.total == 0 ? '' : printf(
                \   '%dW %dE',
                \   all_non_errors,
                \   all_errors
                \)
    endfunction

    set ruler
    set rulerformat=%42(%=%#Statusline#%<%t%r%m%#Normal#%14(%l/%L:%v%)%)
    set laststatus=2
    " Previous Statuline
    " set statusline=%=%#Statusline#%<%t%r%m%#Normal#%14(%l/%L:%v%)

    set statusline=
    set statusline+=\ %n
    set statusline+=\ %m\ %<%t\ %r\ %h\ %w\          " modifiable and filename
    set statusline+=\ %1l%*                          " line number
    set statusline+=\:%v%*                           " column number
    set statusline+=\ %{LinterStatus()}\             " Ale
    set statusline+=\%=%Y%*                          " file type
    set statusline+=\ %{strlen(&fenc)?&fenc:&enc}    " encoding
    set statusline+=\ [%{&ff}]%*                     " file format
    set statusline+=\ %{fugitive#statusline()}\      " git
    set title
    set titlestring=%F%(\ [%M]%)\ -\ mvim

    " Override default statusline if help file
    aug HelpStatusLine
        au!
        au FileType help setlocal statusline=%!LocalStatusLine()
    aug END

    aug TerminalStatusLine
        au!
        au FileType Terminal setlocal laststatus=0
    aug END

    function! LocalStatusLine()
        let b:status = "%0*\ %n%0*\ %m\ %<%t\ %r\ %h\ %w\%*\ %2l%*%*\/%v%*"
        return b:status
    endfunction
else
    colorscheme default
endi
