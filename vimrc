set rnu nu
set display-=msgep
set nowrap
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
set smartcase
set encoding=utf-8   
set rop=type:directx,gamma:1.0,contrast:0.5,level:1,geom:1,renmode:4,taamode:1

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_winsize = 30

""""""""" Plugins """""""""""
"" Wilder.vim
" autocmd CmdlineEnter * ++once call s:wilder_init() | call wilder#main#start()
" 
" function! s:wilder_init() abort
"     call wilder#setup({
"         \'modes': [':', '/', '?'],
"         \'next_key': ['\<c-n>', '\<Down>'],
"         \'previous_key': ['\<c-p>', '\<Up>'],
"         \})
" 
"     " Use wilder#wildmenu_lightline_theme() if using Lightline
"     " 'highlights' : can be overriden, see :h wilder#wildmenu_renderer()
"     call wilder#set_option('renderer', wilder#wildmenu_renderer(
"         \ wilder#wildmenu_airline_theme({
"         \   'highlights': {},
"         \   'highlighter': wilder#basic_highlighter(),
"         \   'separator': ' | ',
"         \ })))
" endfunction

"" Fuzzyy.vim
"" TODO Replace by scope.vim after update
let g:fuzzyy_window_layout = { 'FuzzyFiles' : { 'preview' : 0 } }
let g:enable_fuzzyy_MRU_files = 0
let g:fuzzyy_dropdown = 0

"""" keymaps
" https://github.com/vim/vim/issues/10203 Till then use default keybindings :(
" let g:enable_fuzzyy_keymaps = 0
" let g:fuzzyy_keymaps = {
" \     'menu_up': ["\<c-p>", "\<Up>"],
" \     'menu_down': ["\<c-n>", "\<Down>"],
" \     'menu_select': ["\<CR>"],
" " \     'preview_up': ["\<c-u>"],
" " \     'preview_down': ["\<c-d>"],
" \     'cursor_begining': ["\<c-a>"],
" \     'cursor_end': ["\<c-e>"],               
" \     'delete_all': ["\<c-k>"],               
" \.    'delete_prefix': [],                    
" \     'exit': ["\<Esc>", "\<c-g>", "\<c-[>"] }

nnoremap <silent> <leader>fg :FuzzyGrep<CR>
nnoremap <silent> <leader>fc :FuzzyColors<CR>
nnoremap <silent> <leader>fh :FuzzyHelp<CR>
nnoremap <silent> <leader>ff :FuzzyFiles<CR>
nnoremap <silent> <leader>fo :FuzzyMRUFiles<CR>
nnoremap <silent> <leader>x  :FuzzyCommands<CR>
nnoremap <silent> <leader>fb :FuzzyBuffers<CR> 

"" Airlines
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
