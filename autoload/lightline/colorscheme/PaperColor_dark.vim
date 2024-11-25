" =============================================================================
" Filename: autoload/lightline/colorscheme/PaperColor_dark.vim
" Author: TKNGUE
" License: MIT License
" Last Change: 2015-07-27 06:01
" =============================================================================

let s:red = '#df0000'
let s:green = '#008700'
let s:blue = '#00afaf'

let s:pink = '#afdf00'
" let s:pinknew = '#E57B9D'
let s:pinknew = '#D0D0D0' " Este es el color del foreground
let s:olive = '#dfaf5f'
let s:navy = '#df875f'
let s:insertcolor = '#FF8689'
let s:visualcolor = '#8E71C1'
let s:replacecolor = '#529F9F'

let s:orange = '#d75f00'
let s:purple = '#8959a8'
let s:aqua = '#3e999f'

" Basics:
" let s:foreground = '#d0d0d0'
let s:foreground = '#d0d0d0'
" let s:background = '#444444'
let s:background = 'NONE' " '#18131D'
let s:window = '#efefef'
let s:status = '#c6c6c6'
let s:error = '#5f0000'

" Tabline:
let s:tabline_bg = '#191722'
let s:tabline_active_fg = '#FB87AF'
"let s:tabline_bg='#262626'
"let s:tabline_active_fg='#E77C9F'

"let s:tabline_active_bg = '#00afaf'
let s:tabline_active_bg = '#193030'
let s:tabline_inactive_fg = '#c6c6c6'
let s:tabline_inactive_bg = '#262626'
"let s:tabline_active_bg='#262626'
"let s:tabline_active_fg='#FFFFFF'
"let s:tabline_inactive_bg='#262626'
" Statusline:
let s:statusline_active_fg = '#1c1c1c'
" let s:statusline_active_bg = '#5f8787'
let s:statusline_active_bg = '#444444'
let s:statusline_inactive_fg = '#c6c6c6'
let s:statusline_inactive_bg = '#444444'

" Visual:
let s:visual_fg = '#000000'
let s:visual_bg = '#8787af'

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.normal.left = [ [ s:foreground, s:background ], [ s:foreground, s:background ], [ s:pinknew, s:background ] ]
let s:p.normal.right = [ [ s:insertcolor, s:background ], [ s:pinknew, s:background ], [ s:pinknew, s:background ] ]
let s:p.normal.middle = [ [ s:foreground, s:background ]]
let s:p.inactive.right = [ [ s:foreground, s:background ], [ s:foreground, s:background ] ]
let s:p.inactive.left = [ [ s:foreground, s:background ], [ s:foreground, s:background ] ]
let s:p.inactive.middle = [ [ s:foreground, s:background ], ]
" let s:p.insert.left = [ [ s:background, s:blue], [ s:statusline_active_fg, s:status ], [ s:statusline_active_fg, s:statusline_active_bg ] ]
let s:p.insert.left = [ [s:foreground, s:background ], [ s:insertcolor, s:background], [ s:pinknew, s:background ], [ s:pinknew, s:background ] ]
let s:p.replace.left = [ [s:foreground, s:background ], [ s:replacecolor, s:background ], [ s:pinknew, s:background ], [ s:pinknew, s:background ] ]
"let s:p.visual.left = [ [ s:visual_fg, s:visual_bg ], [s:statusline_active_fg, s:status ], [ s:statusline_active_fg, s:statusline_active_bg ] ]
let s:p.visual.left = [ [s:foreground, s:background ], [ s:visualcolor, s:background ], [s:pinknew, s:background ], [ s:pinknew, s:background ] ]
let s:p.tabline.left = [ [s:tabline_inactive_fg, s:tabline_inactive_bg ]]
let s:p.tabline.tabsel = [ [s:tabline_active_fg, s:tabline_active_bg ] ]
let s:p.tabline.middle = [ [s:tabline_bg, s:tabline_bg]]
let s:p.tabline.right = copy(s:p.normal.right)
let s:p.normal.error = [ [ s:background, s:error ] ]

let g:lightline#colorscheme#PaperColor_dark#palette = lightline#colorscheme#fill(s:p)
