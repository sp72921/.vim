" Name:         ef-elea-dark
" Author:       sp729
" Maintainer:   sp729
" License:      GPL-3.0 license
" Last Updated: 20 July 2025

" A port of Prot's emacs theme ef-elea-dark
" https://protesilaos.com/emacs/ef-themes

set background=dark

" Get the name of the face under the cursor
function! SynGroup()
    let l:s = synID(line('.'), col('.'), 1)
    echo synIDattr(l:s, 'name') . ' -> ' . synIDattr(synIDtrans(l:s), 'name')
endfun

map gm :call SynGroup()<CR>

hi clear
let g:colors_name = 'ef-elea-dark'

" GUI hexadecimal palette {{{
if (has("gui_running"))
  let s:vmode   = "gui"
  let s:bgMain  = "#222524"
  let s:fgMain  = "#eaf2ef"
  let s:bgDim   = "#303332"
  let s:fgDim   = "#969faf"
  let s:bgTerm  = "#000000"
  let s:fgTerm  = "#ffffff"

  " Basic hues for foreground values
  let s:red             = "#ff656a"
  let s:green           = "#7fc87f"
  let s:yellow          = "#cac85f"
  let s:blue            = "#57aff6"
  let s:magenta         = "#f59acf"
  let s:cyan            = "#6fcfd2"
  let s:red_warmer      = "#ff7a5f"
  let s:green_warmer    = "#7fca5a"
  let s:yellow_warmer   = "#e0b02f"
  let s:blue_warmer     = "#78afff"
  let s:magenta_warmer  = "#fa90ea"
  let s:cyan_warmer     = "#7fcfdf"

  " Specific colors
  " TODO: Name the variables properly for certain colors like
  "       bg_<color_name> or ef_elea_dark_<color_name>
  let s:bg_active      = "#5e6160"
  let s:bg_alt         = "#3e4140"
  let s:fg_alt         = "#8fcfbb"
  let s:bg_inactive    = "#2b2e2d"

  " UNUSED: Cooler hues
  let s:red_cooler     = "#fa7f88"
  let s:red_faint      = "#eba8a8"
  let s:yellow_cooler  = "#cfb27f"
  let s:green_cooler   = "#50cf89"
  let s:green_faint    = "#a9c99f"
  let s:yellow_faint   = "#cac89f"
  let s:blue_cooler    = "#62cfef"
  let s:blue_faint     = "#6ab4ef"
  let s:magenta_cooler = "#cfaaff"
  let s:magenta_faint  = "#d0b9f0"
  let s:cyan_cooler    = "#60d5c2"
  let s:cyan_faint     = "#99bfcf"

  " UNUSED: Basic hues for foreground values
  let s:fg_red_intense      = "#bd1f30"
  let s:fg_green_intense    = "#408420"
  let s:fg_yellow_intense   = "#847020"
  let s:fg_blue_intense     = "#2f5f9f"
  let s:fg_magenta_intense  = "#b05fcf"
  let s:fg_cyan_intense     = "#028099"
  let s:fg_red_subtle       = "#6a102a"
  let s:fg_green_subtle     = "#00522a"
  let s:fg_yellow_subtle    = "#5a4000"
  let s:fg_blue_subtle      = "#243788"
  let s:fg_magenta_subtle   = "#422e6b"
  let s:fg_cyan_subtle      = "#005065"

  " Diffs
  let s:bg_added           = "#20493f"
  let s:bg_added_faint     = "#203a2f"
  let s:bg_added_refine    = "#136244"
  let s:fg_added           = "#a0e0a0"
  let s:bg_changed         = "#51512f"
  let s:bg_changed_faint   = "#40332f"
  let s:bg_changed_refine  = "#61621f"
  let s:fg_changed         = "#dada90"
  let s:bg_removed         = "#5e242f"
  let s:bg_removed_faint   = "#4a242a"
  let s:bg_removed_refine  = "#772a35"
  let s:fg_removed         = "#ffbfbf"

  " UNUSED: Graphs
  let s:bg_graph_red_0      = "#b52c2c"
  let s:bg_graph_red_1      = "#702020"
  let s:bg_graph_green_0    = "#0fed00"
  let s:bg_graph_green_1    = "#007800"
  let s:bg_graph_yellow_0   = "#f1e00a"
  let s:bg_graph_yellow_1   = "#b08940"
  let s:bg_graph_blue_0     = "#2fafef"
  let s:bg_graph_blue_1     = "#1f2f8f"
  let s:bg_graph_magenta_0  = "#bf94fe"
  let s:bg_graph_magenta_1  = "#5f509f"
  let s:bg_graph_cyan_0     = "#47dfea"
  let s:bg_graph_cyan_1     = "#00808f"

  " Special hues
  let s:bg_mode_line        = "#35605d"
  let s:fg_mode_line        = "#ecf0ff"
  let s:completion          = "#37493f"
  let s:hover               = "#894f7a"
  let s:hover_secondary     = "#425d4a"
  let s:hl_line             = "#2f413f"
  let s:paren               = "#3f6f5f"
  let s:bg_err              = "#551525"
  let s:bg_warning          = "#424223"
  let s:bg_info             = "#104420"
  let s:border              = "#5d5f63"
  let s:cursor              = "#ef7fa8"
  let s:fg_intense          = "#ffffff"
  let s:modeline_err        = "#ffbfbf"
  let s:modeline_warning    = "#dfd443"
  let s:modeline_info       = "#7fefff"
  let s:underline_err       = "#df2f2f"
  let s:underline_warning   = "#c0b000"
  let s:underline_info      = "#22b022"
  let s:bg_char_0           = "#0050af"
  let s:bg_char_1           = "#7f1f7f"

  " New colors
  let s:region              = "#543040"
endif
" }}}

" Formatting options and null values for passthrough effect "{{{
" ---------------------------------------------------------------------
  let s:none            = "NONE"
  let s:none            = "NONE"
  let s:t_none          = "NONE"
  let s:n               = "NONE"
  let s:c               = ",undercurl"
  let s:r               = ",reverse"
  let s:s               = ",standout"
  let s:ou              = ""
  let s:ob              = ""
  let s:b               = ",bold"
  let s:bb              = ",bold"
  let s:u               = ",underline"
  let s:i               = ",italic"
"}}}

" Highlighting primitives"{{{
" ---------------------------------------------------------------------
" Formatting options
exe "let s:fmt_none     = ' ".s:vmode."=NONE".          " term=NONE".    "'"
exe "let s:fmt_bold     = ' ".s:vmode."=NONE".s:b.      " term=NONE".s:b."'"
exe "let s:fmt_bldi     = ' ".s:vmode."=NONE".s:b.      " term=NONE".s:b."'"
exe "let s:fmt_undr     = ' ".s:vmode."=NONE".s:u.      " term=NONE".s:u."'"
exe "let s:fmt_undb     = ' ".s:vmode."=NONE".s:u.s:b.  " term=NONE".s:u.s:b."'"
exe "let s:fmt_undi     = ' ".s:vmode."=NONE".s:u.      " term=NONE".s:u."'"
exe "let s:fmt_uopt     = ' ".s:vmode."=NONE".s:ou.     " term=NONE".s:ou."'"
exe "let s:fmt_curl     = ' ".s:vmode."=NONE".s:c.      " term=NONE".s:c."'"
exe "let s:fmt_ital     = ' ".s:vmode."=NONE".s:i.      " term=NONE".s:i."'"
exe "let s:fmt_stnd     = ' ".s:vmode."=NONE".s:s.      " term=NONE".s:s."'"
exe "let s:fmt_revr     = ' ".s:vmode."=NONE".s:r.      " term=NONE".s:r."'"
exe "let s:fmt_revb     = ' ".s:vmode."=NONE".s:r.s:b.  " term=NONE".s:r.s:b."'"
" }}}

" Background
exe "let s:bg_none           = ' ".s:vmode."bg=".s:none           ."'"
exe "let s:bg_main           = ' ".s:vmode."bg=".s:bgMain         ."'"
exe "let s:bg_dim            = ' ".s:vmode."bg=".s:bgDim          ."'"
exe "let s:bg_red            = ' ".s:vmode."bg=".s:red            ."'"
exe "let s:bg_green          = ' ".s:vmode."bg=".s:green          ."'"
exe "let s:bg_yellow         = ' ".s:vmode."bg=".s:yellow         ."'"
exe "let s:bg_blue           = ' ".s:vmode."bg=".s:blue           ."'"
exe "let s:bg_magenta        = ' ".s:vmode."bg=".s:magenta        ."'"
exe "let s:bg_cyan           = ' ".s:vmode."bg=".s:cyan           ."'"
exe "let s:bg_red_warmer     = ' ".s:vmode."bg=".s:red_warmer     ."'"
exe "let s:bg_green_warmer   = ' ".s:vmode."bg=".s:green_warmer   ."'"
exe "let s:bg_yellow_warmer  = ' ".s:vmode."bg=".s:yellow_warmer  ."'"
exe "let s:bg_blue_warmer    = ' ".s:vmode."bg=".s:blue_warmer    ."'"
exe "let s:bg_magenta_warmer = ' ".s:vmode."bg=".s:magenta_warmer ."'"
exe "let s:bg_cyan_warmer    = ' ".s:vmode."bg=".s:cyan_warmer    ."'"

" Foreground
exe "let s:fg_none           = ' ".s:vmode."fg=".s:none           ."'"
exe "let s:fg_main           = ' ".s:vmode."fg=".s:fgMain         ."'"
exe "let s:fg_dim            = ' ".s:vmode."fg=".s:fgDim          ."'"
exe "let s:fg_red            = ' ".s:vmode."fg=".s:red            ."'"
exe "let s:fg_green          = ' ".s:vmode."fg=".s:green          ."'"
exe "let s:fg_yellow         = ' ".s:vmode."fg=".s:yellow         ."'"
exe "let s:fg_blue           = ' ".s:vmode."fg=".s:blue           ."'"
exe "let s:fg_magenta        = ' ".s:vmode."fg=".s:magenta        ."'"
exe "let s:fg_cyan           = ' ".s:vmode."fg=".s:cyan           ."'"
exe "let s:fg_red_warmer     = ' ".s:vmode."fg=".s:red_warmer     ."'"
exe "let s:fg_green_warmer   = ' ".s:vmode."fg=".s:green_warmer   ."'"
exe "let s:fg_yellow_warmer  = ' ".s:vmode."fg=".s:yellow_warmer  ."'"
exe "let s:fg_blue_warmer    = ' ".s:vmode."fg=".s:blue_warmer    ."'"
exe "let s:fg_magenta_warmer = ' ".s:vmode."fg=".s:magenta_warmer ."'"
exe "let s:fg_cyan_warmer    = ' ".s:vmode."fg=".s:cyan_warmer    ."'"

" Mappings of colors {{{
" ---------------------------------------------------------------------
exe "let s:fg_err             = ' ".s:vmode."fg=".s:red_warmer        ."'"
exe "let s:fg_warning         = ' ".s:vmode."fg=".s:yellow_warmer     ."'"
exe "let s:fg_info            = ' ".s:vmode."fg=".s:green_cooler      ."'"
exe "let s:fg_link            = ' ".s:vmode."fg=".s:green_cooler      ."'"
exe "let s:fg_name            = ' ".s:vmode."fg=".s:green             ."'"
exe "let s:fg_keybind         = ' ".s:vmode."fg=".s:magenta           ."'"
exe "let s:fg_identifier      = ' ".s:vmode."fg=".s:magenta_faint     ."'"
exe "let s:fg_prompt          = ' ".s:vmode."fg=".s:magenta_cooler    ."'"
exe "let s:fg_builtin         = ' ".s:vmode."fg=".s:magenta_faint     ."'"
exe "let s:fg_comment         = ' ".s:vmode."fg=".s:yellow_faint      ."'"
exe "let s:fg_constant        = ' ".s:vmode."fg=".s:magenta_cooler    ."'"
exe "let s:fg_fnname          = ' ".s:vmode."fg=".s:green_warmer      ."'"
exe "let s:fg_keyword         = ' ".s:vmode."fg=".s:red_faint         ."'"
exe "let s:fg_preprocessor    = ' ".s:vmode."fg=".s:magenta_warmer    ."'"
exe "let s:fg_docstring       = ' ".s:vmode."fg=".s:cyan_faint        ."'"
exe "let s:fg_string          = ' ".s:vmode."fg=".s:green_cooler      ."'"
exe "let s:fg_type            = ' ".s:vmode."fg=".s:cyan              ."'"
exe "let s:fg_variable        = ' ".s:vmode."fg=".s:magenta           ."'"
exe "let s:fg_search_match    = ' ".s:vmode."fg=".s:fg_blue_subtle    ."'"
exe "let s:fg_search_current  = ' ".s:vmode."fg=".s:fg_yellow_intense ."'"
exe "let s:fg_search_lazy     = ' ".s:vmode."fg=".s:fg_blue_intense   ."'"
exe "let s:fg_search_replace  = ' ".s:vmode."fg=".s:fg_red_intense    ."'"

" Rainbow mappings
exe "let s:fg_rainbow_0  = ' ".s:vmode."fg=".s:green_warmer   ."'"
exe "let s:fg_rainbow_1  = ' ".s:vmode."fg=".s:red_faint      ."'"
exe "let s:fg_rainbow_2  = ' ".s:vmode."fg=".s:green_faint    ."'"
exe "let s:fg_rainbow_3  = ' ".s:vmode."fg=".s:cyan_cooler    ."'"
exe "let s:fg_rainbow_4  = ' ".s:vmode."fg=".s:magenta_cooler ."'"
exe "let s:fg_rainbow_5  = ' ".s:vmode."fg=".s:magenta        ."'"
exe "let s:fg_rainbow_6  = ' ".s:vmode."fg=".s:green          ."'"
exe "let s:fg_rainbow_7  = ' ".s:vmode."fg=".s:yellow_cooler  ."'"
exe "let s:fg_rainbow_8  = ' ".s:vmode."fg=".s:blue_faint     ."'"

" Config: No ugly vertical lines for the split windows and other changes
exe "let s:vert_main          = ' ".s:vmode."fg=".s:bgMain           ."'"
exe "let s:bg_active          = ' ".s:vmode."bg=".s:bg_active        ."'"
exe "let s:bg_alt             = ' ".s:vmode."bg=".s:bg_alt           ."'"
exe "let s:fg_alt             = ' ".s:vmode."bg=".s:fg_alt           ."'"
exe "let s:bg_inactive        = ' ".s:vmode."bg=".s:bg_inactive      ."'"
exe "let s:fg_modeline        = ' ".s:vmode."fg=".s:fg_mode_line     ."'"
exe "let s:bg_modeline        = ' ".s:vmode."bg=".s:bg_mode_line     ."'"
exe "let s:bg_region          = ' ".s:vmode."bg=".s:region           ."'"
exe "let s:bg_cursor          = ' ".s:vmode."bg=".s:cursor           ."'"
exe "let s:bg_paren           = ' ".s:vmode."bg=".s:paren            ."'"
exe "let s:bg_added           = ' ".s:vmode."bg=".s:bg_added         ."'"
exe "let s:bg_added_faint     = ' ".s:vmode."bg=".s:bg_added_faint   ."'"
exe "let s:bg_added_refine    = ' ".s:vmode."bg=".s:bg_added_refine  ."'"
exe "let s:bg_changed         = ' ".s:vmode."bg=".s:bg_changed       ."'"
exe "let s:bg_changed_faint   = ' ".s:vmode."bg=".s:bg_changed_faint ."'"
exe "let s:bg_changed_refine  = ' ".s:vmode."bg=".s:bg_changed_refine."'"
exe "let s:bg_removed         = ' ".s:vmode."bg=".s:bg_removed       ."'"
exe "let s:bg_removed_faint   = ' ".s:vmode."bg=".s:bg_removed_faint ."'"
exe "let s:bg_removed_refine  = ' ".s:vmode."bg=".s:bg_removed_refine."'"
exe "let s:fg_added           = ' ".s:vmode."fg=".s:fg_added         ."'"
exe "let s:fg_removed         = ' ".s:vmode."fg=".s:fg_removed       ."'"
exe "let s:fg_changed         = ' ".s:vmode."fg=".s:fg_changed       ."'"
exe "let s:bg_err             = ' ".s:vmode."bg=".s:bg_err           ."'"
exe "let s:bg_warning         = ' ".s:vmode."bg=".s:bg_warning       ."'"
exe "let s:fg_title           = ' ".s:vmode."fg=".s:red_faint        ."'"
exe "let s:bg_completion      = ' ".s:vmode."bg=".s:completion       ."'"
exe "let s:bg_hover           = ' ".s:vmode."bg=".s:hover            ."'"
exe "let s:bg_hover_secondary = ' ".s:vmode."bg=".s:hover_secondary  ."'"
exe "let s:bg_hl_line         = ' ".s:vmode."bg=".s:hl_line          ."'"
exe "let s:fg_success         = ' ".s:vmode."fg=".s:green_cooler     ."'"
exe "let s:fg_special         = ' ".s:vmode."fg=".s:cyan_faint       ."'"
exe "let s:bg_terminal        = ' ".s:vmode."bg=".s:bgTerm           ."'"
exe "let s:fg_terminal        = ' ".s:vmode."fg=".s:fgTerm           ."'"
" }}}

" Basic highlighting"{{{
" ---------------------------------------------------------------------
exe "hi! Normal"       .s:fmt_none   .s:fg_main           .s:bg_main

exe "hi! Comment"      .s:fmt_ital   .s:fg_comment        .s:bg_none
"       *Comment       any comment

exe "hi! Constant"     .s:fmt_none   .s:fg_constant       .s:bg_none
"       *Constant      any constant
"        String        a string constant: "this is a string"
"        Character     a character constant: 'c', '\n'
"        Number        a number constant: 234, 0xff
"        Boolean       a boolean constant: TRUE, false
"        Float         a floating point constant: 2.3e10

exe "hi! Identifier"   .s:fmt_none   .s:fg_variable       .s:bg_none
"       *Identifier    any variable name
"        Function      function name (also: methods for classes)
"
exe "hi! Statement"    .s:fmt_bold   .s:fg_keyword        .s:bg_none
"       *Statement     any statement
"        Conditional   if, then, else, endif, switch, etc.
"        Repeat        for, do, while, etc.
"        Label         case, default, etc.
"        Operator      "sizeof", "+", "*", etc.
"        Keyword       any other keyword
"        Exception     try, catch, throw

exe "hi! PreProc"      .s:fmt_none   .s:fg_preprocessor   .s:bg_none
"       *PreProc       generic Preprocessor
"        Include       preprocessor #include
"        Define        preprocessor #define
"        Macro         same as Define
"        PreCondit     preprocessor #if, #else, #endif, etc.

exe "hi! Type"         .s:fmt_none   .s:fg_cyan           .s:bg_none
"       *Type          int, long, char, etc.
"        StorageClass  static, register, volatile, etc.

exe "hi! Special"      .s:fmt_none   .s:fg_special        .s:bg_none
"       *Special       any special symbol
"        SpecialChar   special character in a constant
"        Tag           you can use CTRL-] on this
"        Delimiter     character that needs attention
"        SpecialCommentspecial things inside a comment
"        Debug         debugging statements

exe "hi! Underlined"   .s:fmt_none   .s:fg_dim            .s:bg_none
"       *Underlined    text that stands out, HTML links

exe "hi! Ignore"       .s:fmt_none   .s:fg_none           .s:bg_none
"       *Ignore        left blank, hidden  |hl-Ignore|

exe "hi! Error"        .s:fmt_bold   .s:fg_err            .s:bg_none
"       *Error         any erroneous construct

exe "hi! Todo"         .s:fmt_bold   .s:fg_red_warmer     .s:bg_none
"       *Todo           anything that needs extra attention; mostly the
"                       keywords TODO FIXME and XXX

" Color Config
exe "hi! Number"       .s:fmt_none   .s:fg_none           .s:bg_none
exe "hi! Float"        .s:fmt_none   .s:fg_none           .s:bg_none
exe "hi! Cursor"       .s:fmt_none   .s:fg_none           .s:bg_cursor
exe "hi! MatchParen"   .s:fmt_none   .s:fg_none           .s:bg_paren
exe "hi! LineNr"       .s:fmt_none   .s:fg_main           .s:bg_alt
exe "hi! LineNrAbove"  .s:fmt_none   .s:fg_dim            .s:bg_dim
exe "hi! LineNrBelow"  .s:fmt_none   .s:fg_dim            .s:bg_dim
exe "hi! CursorLine"   .s:fmt_none   .s:fg_none           .s:bg_hl_line
exe "hi! CursorLineNr" .s:fmt_none   .s:fg_none           .s:bg_alt
exe "hi! Visual"       .s:fmt_none   .s:fg_none           .s:bg_region
exe "hi! VisualNOS"    .s:fmt_none   .s:fg_none           .s:bg_region
exe "hi! Keyword"      .s:fmt_none   .s:fg_keyword        .s:bg_none
exe "hi! Typedef"      .s:fmt_none   .s:fg_keyword        .s:bg_none
exe "hi! Structure"    .s:fmt_none   .s:fg_keyword        .s:bg_none
exe "hi! String"       .s:fmt_none   .s:fg_string         .s:bg_none
exe "hi! Character"    .s:fmt_none   .s:fg_string         .s:bg_none
exe "hi! Tag"          .s:fmt_none   .s:fg_docstring      .s:bg_none
exe "hi! Function"     .s:fmt_none   .s:fg_fnname         .s:bg_none
exe "hi! ColorColumn"  .s:fmt_none   .s:fg_none           .s:bg_dim
exe "hi! Search "      .s:fmt_revr   .s:fg_search_lazy    .s:bg_none
exe "hi! IncSearch"    .s:fmt_stnd   .s:fg_search_current .s:bg_none
exe "hi! Directory"    .s:fmt_none   .s:fg_blue           .s:bg_none
exe "hi! VertSplit"    .s:fmt_none   .s:vert_main         .s:bg_main
exe "hi! StatusLine"   .s:fmt_bold   .s:fg_modeline       .s:bg_modeline
exe "hi! StatusLineNC" .s:fmt_none   .s:fg_dim            .s:bg_inactive
exe "hi! WildMenu"     .s:fmt_bold   .s:fg_main           .s:bg_hl_line
exe "hi! Folded"       .s:fmt_undb   .s:fg_dim            .s:bg_dim
exe "hi! FoldColumn"   .s:fmt_none   .s:fg_dim            .s:bg_dim
exe "hi! SignColumn"   .s:fmt_none   .s:fg_dim            .s:bg_dim
exe "hi! ErrorMsg"     .s:fmt_revr   .s:fg_err            .s:bg_none
exe "hi! WarningMsg"   .s:fmt_revr   .s:fg_warning        .s:bg_none
exe "hi! NonText"      .s:fmt_none   .s:fg_cyan           .s:bg_none
exe "hi! Question"     .s:fmt_none   .s:fg_green          .s:bg_none
exe "hi! QuickFixLine" .s:fmt_none   .s:fg_none           .s:bg_completion
exe "hi! Title"        .s:fmt_bold   .s:fg_title          .s:bg_none
exe "hi! Terminal"     .s:fmt_none   .s:fg_terminal       .s:bg_terminal

" Pmenu
exe "hi! Pmenu"        .s:fmt_none   .s:fg_alt            .s:bg_alt
exe "hi! PmenuSbar"    .s:fmt_none   .s:fg_dim            .s:bg_dim
exe "hi! PmenuSel"     .s:fmt_none   .s:fg_main           .s:bg_completion
exe "hi! PmenuThumb"   .s:fmt_none   .s:fg_magenta        .s:bg_magenta

" Tabline and Toolbar
exe "hi! ToolbarLine"  .s:fmt_none   .s:fg_alt            .s:bg_alt
exe "hi! ToolbarButton".s:fmt_none   .s:fg_alt            .s:bg_alt
exe "hi! TabLine"      .s:fmt_none   .s:fg_dim            .s:bg_inactive
exe "hi! TabLineFill"  .s:fmt_none   .s:fg_dim            .s:bg_inactive
exe "hi! TabLineSel"   .s:fmt_none   .s:fg_main           .s:bg_active

" Mode Message
exe "hi! ModeMsg"      .s:fmt_none   .s:fg_prompt         .s:bg_none
exe "hi! MoreMsg"      .s:fmt_none   .s:fg_prompt         .s:bg_none

" Diff
exe "hi! DiffAdd"      .s:fmt_none   .s:fg_added          .s:bg_added
exe "hi! DiffChange"   .s:fmt_none   .s:fg_changed        .s:bg_changed
exe "hi! DiffDelete"   .s:fmt_none   .s:fg_none           .s:bg_red_warmer
exe "hi! DiffText"     .s:fmt_bold   .s:fg_main           .s:bg_alt
exe "hi! Removed"      .s:fmt_none   .s:fg_removed        .s:bg_removed
exe "hi! Added"        .s:fmt_none   .s:fg_added          .s:bg_added
exe "hi! Changed"      .s:fmt_none   .s:fg_changed        .s:bg_changed

" ALE
exe "hi! ALEErrorSign"  .s:fmt_none   .s:fg_err           .s:bg_err
exe "hi! ALEWarningSign".s:fmt_none   .s:fg_warning       .s:bg_warning

" Fugitive
exe "hi! FugitiveHunk"            .s:fmt_none   .s:fg_dim    .s:bg_none
exe "hi! FugitiveStagedHeading"   .s:fmt_bold   .s:fg_title  .s:bg_none
exe "hi! FugitiveUnstagedModifier".s:fmt_none   .s:fg_changed.s:bg_none
exe "hi! FugitiveStagedModifier"  .s:fmt_none   .s:fg_added  .s:bg_none
exe "hi! gitcommitSelectedType"   .s:fmt_none   .s:fg_added  .s:bg_none
exe "hi! gitcommitBranch"         .s:fmt_none   .s:fg_info   .s:bg_none
exe "hi! gitcommitSummary"        .s:fmt_bold   .s:fg_success.s:bg_none
hi! link FugitiveUnstagedHeading  FugitiveStagedHeading
hi! link FugitiveUntrackedHeading FugitiveStagedHeading
hi! link FugitiveHeader           FugitiveStagedHeading
hi! link FugitiveHelpHeader       FugitiveStagedHeading
hi! link gitcommitSelectedFile    Directory
hi! link gitcommitDiscardedFile   Directory
hi! link gitcommitUntrackedFile   Directory
hi! link gitcommitHeader          FugitiveHeader
hi! link gitcommitDiscardedType   gitcommitSelectedType

" Fuzzyy
exe "hi! fuzzyyMatching" .s:fmt_bold   .s:fg_red_warmer    .s:bg_none
hi! link fuzzyyNormal Normal
hi! link fuzzyyBorder Normal
hi! link fuzzyyPreviewMatch CurSearch

" HTML
exe "hi! htmlTitle"         .s:fmt_undb  .s:fg_main     .s:bg_none
exe "hi! htmlTag"           .s:fmt_none  .s:fg_main     .s:bg_none
exe "hi! htmlEndTag"        .s:fmt_none  .s:fg_main     .s:bg_none
exe "hi! htmlItalic"        .s:fmt_ital  .s:fg_main     .s:bg_none
exe "hi! htmlBold"          .s:fmt_bold .s:fg_main     .s:bg_none
exe "hi! htmlTagN"          .s:fmt_none  .s:fg_dim      .s:bg_none
exe "hi! htmlTagName"       .s:fmt_none  .s:fg_fnname   .s:bg_none
exe "hi! htmlSpecialTagName".s:fmt_none  .s:fg_fnname   .s:bg_none
exe "hi! htmlArg"           .s:fmt_none  .s:fg_variable .s:bg_none
exe "hi! javaScript"        .s:fmt_none  .s:fg_yellow   .s:bg_none
"}}}

hi! link Conditional Statement
hi! link CurSearch Search
hi! link CursorLineFold FoldColumn
hi! link CursorLineSign SignColumn
hi! link Exception Statement
hi! link MessageWindow WarningMsg
hi! link PmenuKind Pmenu
hi! link PmenuKindSel PmenuSel
hi! link PmenuExtra Pmenu
hi! link PmenuExtraSel PmenuSel
hi! link PmenuMatch Pmenu
hi! link PmenuMatchSel PmenuSel
hi! link PopupNotification WarningMsg
hi! link PopupSelected PmenuSel
hi! link PreCondit PreProc
hi! link Repeat Statement
hi! link StatusLineTerm StatusLine
hi! link StatusLineTermNC StatusLineNC
hi! link Typedef Type
hi! link debugBreakpoint SignColumn
hi! link debugPC SignColumn
hi! link lCursor Cursor
hi! link netrwClassify Directory

" Git
hi! link diffAdded DiffAdd
hi! link diffRemoved Removed
hi! link diffLine DiffText
hi! link diffSubName DiffText

" HTML
hi! link htmlH1 htmlTitle

" INFO: Generated from vim-colorscheme plugin. Port it to the above commands
" let s:t_Co = has('gui_running') ? -1 : (&t_Co ?? 0)
" let s:italics = (&t_ZH != '' && &t_ZH != '[7m') || has('gui_running')

" if s:t_Co >= 256
"   hi Conceal ctermfg=80 ctermbg=NONE cterm=NONE
"   hi SpecialKey ctermfg=247 ctermbg=NONE cterm=NONE
"   hi SpellBad ctermfg=212 ctermbg=NONE cterm=undercurl
"   hi SpellCap ctermfg=212 ctermbg=NONE cterm=undercurl
"   hi SpellLocal ctermfg=212 ctermbg=NONE cterm=undercurl
"   hi SpellRare ctermfg=212 ctermbg=NONE cterm=undercurl
"   hi SpellBad ctermfg=212 ctermbg=NONE cterm=underline
"   hi SpellCap ctermfg=212 ctermbg=NONE cterm=underline
"   hi SpellLocal ctermfg=212 ctermbg=NONE cterm=underline
"   hi SpellRare ctermfg=212 ctermbg=NONE cterm=underline
"   hi Debug ctermfg=218 ctermbg=NONE cterm=NONE
"   hi Delimiter ctermfg=255 ctermbg=NONE cterm=NONE
"   hi Ignore ctermfg=255 ctermbg=NONE cterm=NONE
"   hi Label ctermfg=114 ctermbg=NONE cterm=NONE
"   hi Operator ctermfg=NONE ctermbg=NONE cterm=NONE
"   hi specialcomment ctermfg=203 ctermbg=NONE cterm=NONE
"   hi CursorIM ctermfg=NONE ctermbg=255 cterm=NONE
"   if !s:italics
"     hi Folded cterm=NONE
"     hi Comment cterm=NONE
"   endif
"   unlet s:t_Co s:italics
"   finish
" endif

" TODO: Terminal colorscheme
" term Colors: bgMain     red            green        yellow
"              blue       magenta        cyan         fgMain
" term Colors: bgDim      redWarmer      greenWarmer  yellowWarmer
"              blueWarmer magentaWarmer  cyanWarmer   fgDim

" bg-term-black           "black"
" fg-term-black           "black"
" bg-term-black-bright    "gray35"
" fg-term-black-bright    "gray35"
" bg-term-red             red
" fg-term-red             red
" bg-term-red-bright      red-warmer
" fg-term-red-bright      red-warmer
" bg-term-green           green
" fg-term-green           green
" bg-term-green-bright    green-cooler
" fg-term-green-bright    green-cooler
" bg-term-yellow          yellow
" fg-term-yellow          yellow
" bg-term-yellow-bright   yellow-warmer
" fg-term-yellow-bright   yellow-warmer
" bg-term-blue            blue
" fg-term-blue            blue
" bg-term-blue-bright     blue-warmer
" fg-term-blue-bright     blue-warmer
" bg-term-magenta         magenta
" fg-term-magenta         magenta
" bg-term-magenta-bright  magenta-cooler
" fg-term-magenta-bright  magenta-cooler
" bg-term-cyan            cyan-warmer
" fg-term-cyan            cyan-warmer
" bg-term-cyan-bright     cyan-cooler
" fg-term-cyan-bright     cyan-cooler
" bg-term-white           "gray65"
" fg-term-white           "gray65"
" bg-term-white-bright    "white"
" fg-term-white-bright    "white"

" vim: et ts=8 sw=2 sts=2
