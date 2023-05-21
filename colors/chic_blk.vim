scriptencoding utf-8

hi clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name="chic_blk"

" ==========================
" Highlighting Function
" ==========================
fun! <sid>hi(group, fg, bg, attr)
  if !empty(a:fg)
    exec "hi " . a:group . " guifg=" . a:fg.gui . " ctermfg=" .  a:fg.cterm256
  endif
  if !empty(a:bg)
    exec "hi " . a:group . " guibg=" . a:bg.gui . " ctermbg=" .  a:bg.cterm256
  endif
  if a:attr != ""
    exec "hi " . a:group . " gui=" . a:attr . " cterm=" . a:attr
  endif
endfun

" ==========================
" Color Variables
" ==========================
let s:chic_blk_black1 = {'gui': '#080808', 'cterm256': '232'}
let s:chic_blk_black2 = {'gui': '#1c1c1c', 'cterm256': '234'}
let s:chic_blk_black3 = {'gui': '#262626', 'cterm256': '235'}
let s:chic_blk_gray1 = {'gui': '#3E3D32', 'cterm256': '237'}
let s:chic_blk_gray2 = {'gui': '#49483E', 'cterm256': '239'}
let s:chic_blk_gray3 = {'gui': '#767676', 'cterm256': '243'}
let s:chic_blk_gray4 = {'gui': '#949494', 'cterm256': '246'}
let s:chic_blk_gray5 = {'gui': '#B0B0B0', 'cterm256': '249'}
let s:chic_blk_gray6 = {'gui': '#C6C6C6', 'cterm256': '251'}
let s:chic_blk_white1 = {'gui': '#D0D0D0', 'cterm256': '252'}
let s:chic_blk_white2 = {'gui': '#FFFFFF', 'cterm256': '231'}
let s:chic_blk_blue = {'gui': '#5F8787', 'cterm256': '66'}
let s:chic_blk_green1 = {'gui': '#008700', 'cterm256': '28'}
let s:chic_blk_green2 = {'gui': '#00af5f', 'cterm256': '35'}
let s:chic_blk_gold1 = {'gui': '#8E700B', 'cterm256': '136'}
let s:chic_blk_gold2 = {'gui': '#D7AF00', 'cterm256': '178'}
let s:chic_blk_brown1 = {'gui': '#5F5F00', 'cterm256': '58'}
let s:chic_blk_brown2 = {'gui': '#AFAF00', 'cterm256': '142'}
let s:chic_blk_red = {'gui': '#D70000', 'cterm256': '160'}
let s:chic_blk_indian_red = {'gui': '#AF5F5F', 'cterm256': '131'}
let s:chic_blk_pink = {'gui': '#FFD7FF', 'cterm256': '225'}
let s:chic_blk_cian = {'gui': '#D7FFFF', 'cterm256': '195'}
let s:none = {'gui': 'NONE', 'cterm256': 'NONE'}

" ==========================
" Definitions
" ==========================
" call <sid>hi(GROUP, FOREGROUND, BACKGROUND, ATTRIBUTE)

" Editor
call <sid>hi('ColorColumn', s:none, s:chic_blk_gray2, 'none')
call <sid>hi('Cursor', s:chic_blk_black1, s:chic_blk_white1, 'none')
call <sid>hi('CursorColumn', s:none, s:chic_blk_black2, 'none')
call <sid>hi('CursorLine', s:none, s:chic_blk_black3, 'none')
call <sid>hi('CursorLineNr', s:chic_blk_white1, s:chic_blk_gray1, 'none')
call <sid>hi('Directory', s:chic_blk_white1, s:chic_blk_black1, 'none')
call <sid>hi('FoldColumn', s:chic_blk_gray6, s:chic_blk_black1, 'none')
call <sid>hi('Folded', s:chic_blk_gray4, s:none, 'none')
call <sid>hi('IncSearch', s:chic_blk_black1, s:chic_blk_gold1, 'none')
call <sid>hi('LineNr', s:chic_blk_gray4, s:chic_blk_black3, 'none')
call <sid>hi('MatchParen', s:chic_blk_white1, s:chic_blk_gray3, 'none')
call <sid>hi('Normal', s:chic_blk_white1, s:chic_blk_black1, 'none')
call <sid>hi('Pmenu', s:none, s:chic_blk_black3, 'none')
call <sid>hi('PmenuSel', s:none, s:chic_blk_gray2, 'none')
call <sid>hi('Search', s:chic_blk_black1, s:chic_blk_gold1, 'none')
call <sid>hi('SignColumn', s:none, s:chic_blk_black2, 'none')
call <sid>hi('StatusLine', s:chic_blk_black1, s:chic_blk_white1, 'none')
call <sid>hi('StatusLineNC', s:chic_blk_gray1, s:chic_blk_gray5, 'none')
call <sid>hi('VertSplit', s:chic_blk_black1, s:chic_blk_gray3, 'none')
call <sid>hi('Visual', s:none, s:chic_blk_gray2, 'none')

" General
" Constant
call <sid>hi('Constant', s:chic_blk_blue, s:none, 'none')
" call <sid>hi('String', s:chic_blk_white1, s:none, 'none')
" call <sid>hi('Character', s:chic_blk_white1, s:none, 'none')
" call <sid>hi('Number', s:chic_blk_white1, s:none, 'none')
" call <sid>hi('Boolean', s:chic_blk_white1, s:none, 'none')
" call <sid>hi('Float', s:chic_blk_white1, s:none, 'none')

call <sid>hi('Identifier', s:chic_blk_white1, s:none, 'none')
call <sid>hi('Function', s:chic_blk_pink, s:none, 'none')

call <sid>hi('Statement', s:chic_blk_indian_red, s:none, 'none')
"call <sid>hi('Conditional', s:chic_blk_white1, s:none, 'none')
"call <sid>hi('Repeat', s:chic_blk_white1, s:none, 'none')
"call <sid>hi('Label', s:chic_blk_white1, s:none, 'none')
"call <sid>hi('Operator', s:chic_blk_white1, s:none, 'none')
"call <sid>hi('Keyword', s:chic_blk_white1, s:none, 'none')
"call <sid>hi('Exception', s:chic_blk_white1, s:none, 'none')

call <sid>hi('PreProc', s:chic_blk_white1, s:none, 'none')
call <sid>hi('Include', s:chic_blk_white1, s:none, 'none')
call <sid>hi('Define', s:chic_blk_white1, s:none, 'none')
call <sid>hi('Macro', s:chic_blk_white1, s:none, 'none')
call <sid>hi('PreCondit', s:chic_blk_white1, s:none, 'none')

" Type
call <sid>hi('Type', s:chic_blk_cian, s:none, 'none')
"call <sid>hi('StorageClass', s:chic_blk_white1, s:none, 'none')
"call <sid>hi('Structure', s:chic_blk_white1, s:none, 'none')
"call <sid>hi('Typedef', s:chic_blk_white1, s:none, 'none')

call <sid>hi('Comment', s:chic_blk_gray3, s:none, 'none')
call <sid>hi('NonText', s:chic_blk_gray3, s:none, 'none')
call <sid>hi('Special', s:chic_blk_white1, s:none, 'none')
call <sid>hi('SpecialKey', s:chic_blk_white1, s:none, 'none')
call <sid>hi('Tag', s:chic_blk_white1, s:none, 'none')
call <sid>hi('Title', s:none, s:none, 'bold')
call <sid>hi('Todo', s:chic_blk_gray3, s:none, 'inverse,bold')
call <sid>hi('Underlined', s:none, s:none, 'underline')
call <sid>hi('SpellBad', s:chic_blk_red, s:none, 'italic,undercurl')
call <sid>hi('SpellCap', s:chic_blk_white1, s:none, 'italic,undercurl')
call <sid>hi('SpellLocal', s:chic_blk_white1, s:none, 'undercurl')
call <sid>hi('WarningMsg', s:chic_blk_black1, s:chic_blk_gold1, 'none')
call <sid>hi('ErrorMsg', s:chic_blk_white1, s:chic_blk_red, 'none')

" Diff Mode
if &diff
call <sid>hi('DiffAdd', s:chic_blk_black1, s:chic_blk_green2, 'none')
call <sid>hi('DiffChange', s:chic_blk_black1, s:chic_blk_gold1, 'none')
call <sid>hi('DiffDelete', s:chic_blk_red, s:chic_blk_brown1, 'none')
call <sid>hi('DiffText', s:chic_blk_black1, s:chic_blk_blue, 'none')
else
call <sid>hi('DiffAdd', s:chic_blk_green2, s:none, 'none')
call <sid>hi('DiffChange', s:chic_blk_gold1, s:none, 'none')
call <sid>hi('DiffDelete', s:chic_blk_red, s:none, 'none')
call <sid>hi('DiffText', s:chic_blk_black1, s:chic_blk_blue, 'none')
endif

