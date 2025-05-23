if has('win32')
    let &shell= '"' . $USERPROFILE . '\opt\w64devkit\bin\sh.exe" -l'
endif

if has('gui_running')
    """ colorscheme
    set guifont=Victor\ Mono:h18,Cascadia\ Code:h18
    let g:solarized_italic=1
    let g:solarized_visibility="high"
    let g:solarized_contrast="high" 
    syntax on
    set background=dark
    colorscheme Solarized
    hi WildMenu guibg=red

    set ruler
    set rulerformat=%42(%=%#Statusline#%<%t%r%m%#Normal#%14(%l/%L:%v%)%)
    set laststatus=2
    set statusline=%=%#Statusline#%<%t%r%m%#Normal#%14(%l/%L:%v%)
    set title
    set titlestring=%F%(\ [%M]%)\ -\ mvim
else
    colorscheme defualt
endif
