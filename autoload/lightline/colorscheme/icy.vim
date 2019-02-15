" =============================================================================
" Filename: autoload/lightline/colorscheme/icy.vim
" Author: xaltsc
" License: MIT License
" Last Change: Fri 15 Feb 2019 10:58:42 PM CET
" =============================================================================

let s:00 = [ '#021012', 0 ]
let s:01 = [ '#16c1d9', 1 ]
let s:02 = [ '#4dd0e1', 2 ]
let s:03 = [ '#80deea', 3 ]
let s:04 = [ '#00bcd4', 4 ]
let s:05 = [ '#00acc1', 5 ]
let s:06 = [ '#26c6da', 6 ]
let s:07 = [ '#095b67', 7 ]
let s:08 = [ '#052e34', 8 ]
let s:09 = [ '#16c1d9', 9 ]
let s:10 = [ '#4dd0e1', 10 ]
let s:11 = [ '#80deea', 11  ]
let s:12 = [ '#00bcd4', 12 ]
let s:13 = [ '#08acc1', 13 ]
let s:14 = [ '#26c6da', 14 ]
let s:15 = [ '#109cb0', 15 ]

if lightline#colorscheme#background() ==# 'light'
  let [s:08, s:15] = [s:15, s:08]
  let [s:00, s:07] = [s:07, s:00]
  let [s:10, s:14] = [s:14, s:10]
  let [s:11, s:12] = [s:12, s:11]
endif

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.normal.left = [ [ s:15, s:04 ], [ s:15, s:10 ] ]
let s:p.normal.right = [ [ s:00, s:12 ], [ s:14, s:10 ] ]
let s:p.inactive.right = [ [ s:00, s:10 ], [ s:11, s:00 ] ]
let s:p.inactive.left =  [ [ s:12, s:00 ], [ s:11, s:00 ] ]
let s:p.insert.left = [ [ s:15, s:02 ], [ s:15, s:10 ] ]
let s:p.replace.left = [ [ s:15, s:01 ], [ s:15, s:10 ] ]
let s:p.visual.left = [ [ s:15, s:05 ], [ s:15, s:10 ] ]
let s:p.normal.middle = [ [ s:14, s:00 ] ]
let s:p.inactive.middle = [ [ s:12, s:00 ] ]
let s:p.tabline.left = [ [ s:07, s:10 ] ]
let s:p.tabline.tabsel = [ [ s:07, s:00 ] ]
let s:p.tabline.middle = [ [ s:10, s:07 ] ]
let s:p.tabline.right = copy(s:p.normal.right)
let s:p.normal.error = [ [ s:07, s:01 ] ]
let s:p.normal.warning = [ [ s:00, s:03 ] ]

let g:lightline#colorscheme#16color#palette = lightline#colorscheme#flatten(s:p)
