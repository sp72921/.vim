"""""""""""""""""""""""""""""
" ale.vim                   " 
"""""""""""""""""""""""""""""
if has('win32')
    let driver_path = $USERPROFILE . '/opt/w64devkit/bin/gcc.exe'
    let clangd_args = ' -log=error --background-index --limit-results=500 --completion-style=bundled'
    if executable('git') == 1
        packadd vim-fugitive
    endif
endif

let g:ale_linters = {
\   'javascript': ['eslint'],
\   'c': ['clangd'],
\   'cpp': ['clangd'],
\}

let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'c': ['uncrustify'],
\}

let g:ale_sign_column_always = 1
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
let g:ale_use_global_executables = 1
let g:ale_disable_lsp = 0
let g:ale_linters_explicit = 1
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_lint_on_text_changed = 'never'
let g:ale_floating_preview = 1
let g:ale_completion_enabled = 1
let g:ale_set_quickfix = 1
let g:ale_c_clangd_executable = 'clangd'
let g:ale_c_clangd_options = '--query-driver=' . driver_path . clangd_args

set omnifunc=ale#completion#OmniFunc

nnoremap <silent> <leader>clc :ALECodeAction<CR>
nnoremap <silent> <leader>cld :ALEGoToDefinition -vsplit<CR>
nnoremap <silent> <leader>clt :ALEGoToTypeDefinition -vsplit<CR>
nnoremap <silent> <leader>cli :ALEGoToImplementation -vsplit<CR>
nnoremap <silent> <leader>clr :ALERename<CR>
nnoremap <silent> <leader>clR :ALEFindReferences -quickfix<CR>
nnoremap <silent> <leader>clF :ALEFixSuggest<CR>
nnoremap <silent> <leader>cls :ALESymbolSearch -relative<CR>
nnoremap <silent> <leader>clh :ALEHover<CR>

" set mouse=a
" set mousemodel=popup_setpos
" set completeopt=menu,menuone,popup,noselect,noinsert
