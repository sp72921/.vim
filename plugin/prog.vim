if has('win32')
    let gcc_driver_path = $USERPROFILE . '/opt/w64devkit/bin/gcc.exe'
    let cpp_driver_path = $USERPROFILE . '/opt/w64devkit/bin/g++.exe'
    let clangd_args = ' -log=error --background-index --limit-results=500 --completion-style=bundled'
    let g:ale_c_clangd_executable = 'clangd'
    let g:ale_c_clangd_options = '--query-driver=' . gcc_driver_path . clangd_args
    if executable('git') == 1
        packadd vim-fugitive
    endif

    if executable('dart') == 1
        packadd dart-vim-plugin

        function! DartFormat()
            setlocal autoread
            silent !dart format '%:p'
        endfun

        let g:dart_style_guide = 2
        let g:dart_trailing_comma_indent = v:true

        augroup dart_snippets
            autocmd! dart_snippets
            autocmd Filetype dart nnoremap ,stless :-1read $USERPROFILE/vimfiles/plugin/snippets/stateless.dart<CR>:%s/$1//g
            autocmd Filetype dart nnoremap ,stful  :-1read $USERPROFILE/vimfiles/plugin/snippets/stateful.dart<CR>:%s/$1//g
            autocmd Filetype dart nnoremap ,stanim :-1read $USERPROFILE/vimfiles/plugin/snippets/animated_container.dart<CR>:%s/$1//g
            autocmd Filetype dart nnoremap ,main   :put =readfile(expand('$USERPROFILE/vimfiles/plugin/snippets/dart.dart'))[0:3]<CR>2k2l
            autocmd Filetype dart nnoremap ,try    :put =readfile(expand('$USERPROFILE/vimfiles/plugin/snippets/dart.dart'))[4:7]<CR>2k2l
            autocmd Filetype dart nnoremap ,if     :put =readfile(expand('$USERPROFILE/vimfiles/plugin/snippets/dart.dart'))[9:11]<CR>2kf(a
            autocmd Filetype dart nnoremap ,w      :put =readfile(expand('$USERPROFILE/vimfiles/plugin/snippets/dart.dart'))[53:55]<CR>:%s/$1//g

            autocmd Filetype dart nnoremap ,s      i(child: <Esc>f(%a)<Esc>%i

            autocmd Filetype dart nnoremap <silent> <leader>df :let &l:formatprg="dart format '%:p'"<CR>
            " autocmd FileType dart nnoremap <silent> <leader>df :call DartFormat()<CR>
        augroup end
    endif

    if executable('flutter') == 1
        packadd vim-flutter
    endif
endif

let g:ale_linters = {
\   'javascript': ['eslint'],
\   'c': ['clangd'],
\   'cpp': ['clangd'],
\   'dart': ['analysis_server'],
\}

let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
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
let g:ale_list_vertical = 1
let g:ale_fix_on_save = 1
let g:ale_dart_analysis_server_executable = $USERPROFILE . "/opt/flutter/bin/dart"
let g:ale_dart_analysis_server_enable_language_server = 1

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
nnoremap <silent> <leader>`   :cn<CR>
nnoremap <silent> <leader>~   :cp<CR>

" au filetype dart :iabbrev statel class MyApp extends StatelessWidget {<CR>const MyApp({super.key});<CR><CR>@override<CR>Widget build(BuildContext context) {<CR>return MaterialApp()<CR>}<ESC>=gg
" au filetype dart :iabbrev statef class NAME extends StatefulWidget {<CR>  const NAME({super.key});<CR>  @override<CR>  State<NAME> createState() => _NAMEState();<CR>}<CR>class _NAMEState extends State<NAME> {<CR>  @override<CR>  Widget build(BuildContext context) {<CR>    return Container();<CR>  }<CR>}
" set mouse=a
" set mousemodel=popup_setpos
" set completeopt=menu,menuone,popup,noselect,noinsert
