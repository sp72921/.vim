set rnu nu
set display-=msgep
set numberwidth=4
set hidden
set autoindent
set shiftwidth=4
set tabstop=4
set smarttab
set expandtab
set wildmenu
set noundofile
set noswapfile
set belloff=all
set incsearch
set hlsearch
set nocompatible
set noshowmode
set colorcolumn=70
set backspace=2
set ignorecase
set smartcase
set wrap
set linebreak
set lazyredraw
set encoding=utf-8
set guioptions=ac
set rop=type:directx,gamma:1.0,contrast:0.5,level:1,geom:1,renmode:4,taamode:1

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_winsize = 20

nnoremap <silent> <leader>sg :FuzzyGrep<CR>
nnoremap <silent> <leader>xh :FuzzyHelp<CR>
nnoremap <silent> <leader>xf :FuzzyFiles<CR>
nnoremap <silent> <leader>x  :FuzzyCommands<CR>
nnoremap <silent> <leader>xb :FuzzyBuffers<CR>

"" vim-airline
if has('gui_running')
    packadd vim-airline
    packadd vim-airline-themes
    call airline#parts#define_accent('file', 'none')
    call airline#parts#define_accent('path', 'none')
    call airline#parts#define_accent('linenr', 'none')
    call airline#parts#define_accent('maxlinenr', 'none')
    let g:airline_extensions = ['branch']
    let g:airline_section_z = '%l:%c'
    let g:airline#extensions#ale#enabled = 1
    let g:airline#extensions#branch#enabled = 1
    let g:airline_detect_paste=1
    let g:airline_theme='lessnoise'
endif

" TODO Import Lua Settings
" set completeopt-=preview
" set termguicolors=true
" set timeoutlen=:w300
" set cmdheight=0
" set wildmode=list:longest
" set completeopt=longest,menuone
