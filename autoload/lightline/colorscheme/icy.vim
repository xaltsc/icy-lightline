" =============================================================================
" Filename: autoload/lightline/colorscheme/icy.vim
" Author: xaltsc
" License: MIT License
" Last Change: Fri 15 Feb 2019 10:58:42 PM CET
" =============================================================================

let s:c00 = [ '#021012', 0 ]
let s:c01 = [ '#16c1d9', 1 ]
let s:c02 = [ '#4dd0e1', 2 ]
let s:c03 = [ '#80deea', 3 ]
let s:c04 = [ '#00bcd4', 4 ]
let s:c05 = [ '#00acc1', 5 ]
let s:c06 = [ '#26c6da', 6 ]
let s:c07 = [ '#095b67', 7 ]
let s:c08 = [ '#052e34', 8 ]
let s:c09 = [ '#16c1d9', 9 ]
let s:c10 = [ '#4dd0e1', 10]
let s:c11 = [ '#80deea', 11]
let s:c12 = [ '#00bcd4', 12]
let s:c13 = [ '#08acc1', 13]
let s:c14 = [ '#26c6da', 14]
let s:c15 = [ '#109cb0', 15]

if lightline#colorscheme#background() ==# 'light'
  let [s:c08, s:c15] = [s:c15, s:c08]
  let [s:c00, s:c07] = [s:c07, s:c00]
  let [s:c10, s:c14] = [s:c14, s:c10]
  let [s:c11, s:c12] = [s:c12, s:c11]
endif

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.normal.left     = [ [ s:c03, s:c08 ], [ s:c07, s:c05 ] ]
let s:p.normal.right    = [ [ s:c08, s:c12 ], [ s:c08, s:c03 ] ]
let s:p.inactive.right  = [ [ s:c00, s:c08 ], [ s:c00, s:c08 ] ]
let s:p.inactive.left   = [ [ s:c07, s:c08 ], [ s:c07, s:c08 ] ]
let s:p.insert.left     = [ [ s:c07, s:c02 ], [ s:c07, s:c05 ] ]
let s:p.replace.left    = [ [ s:c03, s:c07 ], [ s:c07, s:c05 ] ]
let s:p.visual.left     = [ [ s:c07, s:c03 ], [ s:c07, s:c05 ] ]
let s:p.normal.middle   = [ [ s:c07, s:c08 ] ]
let s:p.inactive.middle = [ [ s:c12, s:c00 ] ]
let s:p.tabline.left    = copy(s:p.normal.left)
let s:p.tabline.tabsel  = [ [ s:c07, s:c05 ] ]
let s:p.tabline.middle  = copy(s:p.normal.middle)
let s:p.tabline.right   = copy(s:p.normal.right)
let s:p.normal.error    = [ [ s:c07, s:c01 ] ]
let s:p.normal.warning  = [ [ s:c00, s:c03 ] ]

let g:lightline#colorscheme#icy#palette = lightline#colorscheme#flatten(s:p)
