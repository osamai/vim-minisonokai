" minisonokai is a minimal version of sonokai (https://github.com/sainnhe/sonokai)

let g:colors_name = 'minisonokai'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

if g:minisonokai_transparent_background
	hi Normal ctermfg=250 ctermbg=NONE guifg=#e1e2e3 guibg=NONE cterm=NONE gui=NONE guisp=NONE
	hi Terminal ctermfg=250 ctermbg=NONE guifg=#e1e2e3 guibg=NONE cterm=NONE gui=NONE guisp=NONE
	hi EndOfBuffer ctermfg=235 ctermbg=NONE guifg=#273136 guibg=NONE cterm=NONE gui=NONE guisp=NONE
	hi Folded ctermfg=246 ctermbg=NONE guifg=#82878b guibg=NONE cterm=NONE gui=NONE guisp=NONE
	hi ToolbarLine ctermfg=250 ctermbg=NONE guifg=#e1e2e3 guibg=NONE cterm=NONE gui=NONE guisp=NONE
	hi SignColumn ctermfg=250 ctermbg=NONE guifg=#e1e2e3 guibg=NONE cterm=NONE gui=NONE guisp=NONE
	hi FoldColumn ctermfg=246 ctermbg=NONE guifg=#82878b guibg=NONE cterm=NONE gui=NONE guisp=NONE
else
	hi Normal ctermfg=250 ctermbg=235 guifg=#e1e2e3 guibg=#273136 cterm=NONE gui=NONE guisp=NONE
	hi Terminal ctermfg=250 ctermbg=235 guifg=#e1e2e3 guibg=#273136 cterm=NONE gui=NONE guisp=NONE
	hi EndOfBuffer ctermfg=235 ctermbg=235 guifg=#273136 guibg=#273136 cterm=NONE gui=NONE guisp=NONE
	hi Folded ctermfg=246 ctermbg=236 guifg=#82878b guibg=#313b42 cterm=NONE gui=NONE guisp=NONE
	hi ToolbarLine ctermfg=250 ctermbg=236 guifg=#e1e2e3 guibg=#353f46 cterm=NONE gui=NONE guisp=NONE
	hi SignColumn ctermfg=250 ctermbg=236 guifg=#e1e2e3 guibg=#313b42 cterm=NONE gui=NONE guisp=NONE
	hi FoldColumn ctermfg=246 ctermbg=236 guifg=#82878b guibg=#313b42 cterm=NONE gui=NONE guisp=NONE
endif

hi IncSearch ctermfg=235 ctermbg=203 guifg=#273136 guibg=#ff6d7e cterm=NONE gui=NONE guisp=NONE
hi Search ctermfg=235 ctermbg=107 guifg=#273136 guibg=#a2e57b cterm=NONE gui=NONE guisp=NONE
hi ColorColumn ctermfg=NONE ctermbg=236 guifg=NONE guibg=#313b42 cterm=NONE gui=NONE guisp=NONE
hi Conceal ctermfg=246 ctermbg=NONE guifg=#82878b guibg=NONE cterm=NONE gui=NONE guisp=NONE
hi Cursor ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE cterm=reverse gui=reverse guisp=NONE

hi link vCursor Cursor
hi link iCursor Cursor
hi link lCursor Cursor
hi link CursorIM Cursor

if &diff
	hi CursorLine ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE cterm=underline gui=underline guisp=NONE
	hi CursorColumn ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE cterm=bold gui=bold guisp=NONE
else
	hi CursorLine ctermfg=NONE ctermbg=236 guifg=NONE guibg=#313b42 cterm=NONE gui=NONE guisp=NONE
	hi CursorColumn ctermfg=NONE ctermbg=236 guifg=NONE guibg=#313b42 cterm=NONE gui=NONE guisp=NONE
endif

hi LineNr ctermfg=246 ctermbg=NONE guifg=#82878b guibg=NONE cterm=NONE gui=NONE guisp=NONE

if (&relativenumber == 1 && &cursorline == 0)
	hi CursorLineNr ctermfg=250 ctermbg=NONE guifg=#e1e2e3 guibg=NONE cterm=NONE gui=NONE guisp=NONE
else
	hi CursorLineNr ctermfg=250 ctermbg=236 guifg=#e1e2e3 guibg=#313b42 cterm=NONE gui=NONE guisp=NONE
endif


hi DiffAdd ctermfg=NONE ctermbg=22 guifg=NONE guibg=#394634 cterm=NONE gui=NONE guisp=NONE
hi DiffChange ctermfg=NONE ctermbg=17 guifg=NONE guibg=#354157 cterm=NONE gui=NONE guisp=NONE
hi DiffDelete ctermfg=NONE ctermbg=52 guifg=NONE guibg=#55393d cterm=NONE gui=NONE guisp=NONE
hi DiffText ctermfg=235 ctermbg=250 guifg=#273136 guibg=#e1e2e3 cterm=NONE gui=NONE guisp=NONE
hi Directory ctermfg=107 ctermbg=NONE guifg=#9cd57b guibg=NONE cterm=NONE gui=NONE guisp=NONE
hi ErrorMsg ctermfg=203 ctermbg=NONE guifg=#f76c7c guibg=NONE cterm=bold,underline gui=bold,underline guisp=NONE
hi WarningMsg ctermfg=179 ctermbg=NONE guifg=#e3d367 guibg=NONE cterm=bold gui=bold guisp=NONE
hi ModeMsg ctermfg=250 ctermbg=NONE guifg=#e1e2e3 guibg=NONE cterm=bold gui=bold guisp=NONE
hi MoreMsg ctermfg=110 ctermbg=NONE guifg=#78cee9 guibg=NONE cterm=bold gui=bold guisp=NONE
hi MatchParen ctermfg=NONE ctermbg=237 guifg=NONE guibg=#414b53 cterm=NONE gui=NONE guisp=NONE
hi NonText ctermfg=237 ctermbg=NONE guifg=#414b53 guibg=NONE cterm=NONE gui=NONE guisp=NONE
hi Whitespace ctermfg=237 ctermbg=NONE guifg=#414b53 guibg=NONE cterm=NONE gui=NONE guisp=NONE
hi SpecialKey ctermfg=237 ctermbg=NONE guifg=#414b53 guibg=NONE cterm=NONE gui=NONE guisp=NONE
hi Pmenu ctermfg=250 ctermbg=236 guifg=#e1e2e3 guibg=#353f46 cterm=NONE gui=NONE guisp=NONE
hi PmenuSbar ctermfg=NONE ctermbg=236 guifg=NONE guibg=#353f46 cterm=NONE gui=NONE guisp=NONE
hi PmenuSel ctermfg=235 ctermbg=110 guifg=#273136 guibg=#7cd5f1 cterm=NONE gui=NONE guisp=NONE

hi link WildMenu PmenuSel

hi PmenuThumb ctermfg=NONE ctermbg=246 guifg=NONE guibg=#82878b cterm=NONE gui=NONE guisp=NONE
hi NormalFloat ctermfg=250 ctermbg=236 guifg=#e1e2e3 guibg=#353f46 cterm=NONE gui=NONE guisp=NONE
hi Question ctermfg=179 ctermbg=NONE guifg=#e3d367 guibg=NONE cterm=NONE gui=NONE guisp=NONE
hi SpellBad ctermfg=203 ctermbg=NONE guifg=#f76c7c guibg=NONE cterm=underline gui=underline guisp=#f76c7c
hi SpellCap ctermfg=179 ctermbg=NONE guifg=#e3d367 guibg=NONE cterm=underline gui=underline guisp=#e3d367
hi SpellLocal ctermfg=110 ctermbg=NONE guifg=#78cee9 guibg=NONE cterm=underline gui=underline guisp=#78cee9
hi SpellRare ctermfg=176 ctermbg=NONE guifg=#baa0f8 guibg=NONE cterm=underline gui=underline guisp=#baa0f8
hi StatusLine ctermfg=250 ctermbg=237 guifg=#e1e2e3 guibg=#3a444b cterm=NONE gui=NONE guisp=NONE
hi StatusLineTerm ctermfg=250 ctermbg=237 guifg=#e1e2e3 guibg=#3a444b cterm=NONE gui=NONE guisp=NONE
hi StatusLineNC ctermfg=246 ctermbg=236 guifg=#82878b guibg=#313b42 cterm=NONE gui=NONE guisp=NONE
hi StatusLineTermNC ctermfg=246 ctermbg=236 guifg=#82878b guibg=#313b42 cterm=NONE gui=NONE guisp=NONE
hi TabLine ctermfg=250 ctermbg=237 guifg=#e1e2e3 guibg=#414b53 cterm=NONE gui=NONE guisp=NONE
hi TabLineFill ctermfg=246 ctermbg=236 guifg=#82878b guibg=#313b42 cterm=NONE gui=NONE guisp=NONE
hi TabLineSel ctermfg=235 ctermbg=203 guifg=#273136 guibg=#ff6d7e cterm=NONE gui=NONE guisp=NONE
hi VertSplit ctermfg=237 ctermbg=NONE guifg=#1c1e1f guibg=NONE cterm=NONE gui=NONE guisp=NONE
hi Visual ctermfg=NONE ctermbg=237 guifg=NONE guibg=#3a444b cterm=NONE gui=NONE guisp=NONE
hi VisualNOS ctermfg=NONE ctermbg=237 guifg=NONE guibg=#3a444b cterm=underline gui=underline guisp=NONE
hi QuickFixLine ctermfg=110 ctermbg=NONE guifg=#78cee9 guibg=NONE cterm=bold gui=bold guisp=NONE
hi Debug ctermfg=179 ctermbg=NONE guifg=#e3d367 guibg=NONE cterm=NONE gui=NONE guisp=NONE
hi debugPC ctermfg=235 ctermbg=107 guifg=#273136 guibg=#9cd57b cterm=NONE gui=NONE guisp=NONE
hi debugBreakpoint ctermfg=235 ctermbg=203 guifg=#273136 guibg=#f76c7c cterm=NONE gui=NONE guisp=NONE
hi ToolbarButton ctermfg=235 ctermbg=110 guifg=#273136 guibg=#7cd5f1 cterm=NONE gui=NONE guisp=NONE
if has('nvim')
	hi Substitute ctermfg=235 ctermbg=179 guifg=#273136 guibg=#e3d367 cterm=NONE gui=NONE guisp=NONE
  hi link LspDiagnosticsFloatingError ErrorFloat
  hi link LspDiagnosticsFloatingWarning WarningFloat
  hi link LspDiagnosticsFloatingInformation InfoFloat
  hi link LspDiagnosticsFloatingHint HintFloat
  hi link LspDiagnosticsDefaultError ErrorText
  hi link LspDiagnosticsDefaultWarning WarningText
  hi link LspDiagnosticsDefaultInformation InfoText
  hi link LspDiagnosticsDefaultHint HintText
  hi link LspDiagnosticsVirtualTextError VirtualTextError
  hi link LspDiagnosticsVirtualTextWarning VirtualTextWarning
  hi link LspDiagnosticsVirtualTextInformation VirtualTextInfo
  hi link LspDiagnosticsVirtualTextHint VirtualTextHint
  hi link LspDiagnosticsUnderlineError ErrorText
  hi link LspDiagnosticsUnderlineWarning WarningText
  hi link LspDiagnosticsUnderlineInformation InfoText
  hi link LspDiagnosticsUnderlineHint HintText
  hi link LspDiagnosticsSignError RedSign
  hi link LspDiagnosticsSignWarning YellowSign
  hi link LspDiagnosticsSignInformation BlueSign
  hi link LspDiagnosticsSignHint GreenSign
  hi link LspReferenceText CurrentWord
  hi link LspReferenceRead CurrentWord
  hi link LspReferenceWrite CurrentWord
  hi link TermCursor Cursor
  hi link healthError Red
  hi link healthSuccess Green
  hi link healthWarning Yellow
endif
" }}}
" Syntax: {{{
if g:minisonokai_enable_italic
	hi Type ctermfg=110 ctermbg=NONE guifg=#78cee9 guibg=NONE cterm=italic gui=italic guisp=NONE
	hi Structure ctermfg=110 ctermbg=NONE guifg=#78cee9 guibg=NONE cterm=italic gui=italic guisp=NONE
	hi StorageClass ctermfg=110 ctermbg=NONE guifg=#78cee9 guibg=NONE cterm=italic gui=italic guisp=NONE
	hi Identifier ctermfg=215 ctermbg=NONE guifg=#f3a96a guibg=NONE cterm=italic gui=italic guisp=NONE
	hi Constant ctermfg=215 ctermbg=NONE guifg=#f3a96a guibg=NONE cterm=italic gui=italic guisp=NONE
else
	hi Type ctermfg=110 ctermbg=NONE guifg=#78cee9 guibg=NONE cterm=NONE gui=NONE guisp=NONE
	hi Structure ctermfg=110 ctermbg=NONE guifg=#78cee9 guibg=NONE cterm=NONE gui=NONE guisp=NONE
	hi StorageClass ctermfg=110 ctermbg=NONE guifg=#78cee9 guibg=NONE cterm=NONE gui=NONE guisp=NONE
	hi Identifier ctermfg=215 ctermbg=NONE guifg=#f3a96a guibg=NONE cterm=NONE gui=NONE guisp=NONE
	hi Constant ctermfg=215 ctermbg=NONE guifg=#f3a96a guibg=NONE cterm=NONE gui=NONE guisp=NONE
endif
hi PreProc ctermfg=203 ctermbg=NONE guifg=#f76c7c guibg=NONE cterm=NONE gui=NONE guisp=NONE
hi PreCondit ctermfg=203 ctermbg=NONE guifg=#f76c7c guibg=NONE cterm=NONE gui=NONE guisp=NONE
hi Include ctermfg=203 ctermbg=NONE guifg=#f76c7c guibg=NONE cterm=NONE gui=NONE guisp=NONE
hi Keyword ctermfg=203 ctermbg=NONE guifg=#f76c7c guibg=NONE cterm=NONE gui=NONE guisp=NONE
hi Define ctermfg=203 ctermbg=NONE guifg=#f76c7c guibg=NONE cterm=NONE gui=NONE guisp=NONE
hi Typedef ctermfg=203 ctermbg=NONE guifg=#f76c7c guibg=NONE cterm=NONE gui=NONE guisp=NONE
hi Exception ctermfg=203 ctermbg=NONE guifg=#f76c7c guibg=NONE cterm=NONE gui=NONE guisp=NONE
hi Conditional ctermfg=203 ctermbg=NONE guifg=#f76c7c guibg=NONE cterm=NONE gui=NONE guisp=NONE
hi Repeat ctermfg=203 ctermbg=NONE guifg=#f76c7c guibg=NONE cterm=NONE gui=NONE guisp=NONE
hi Statement ctermfg=203 ctermbg=NONE guifg=#f76c7c guibg=NONE cterm=NONE gui=NONE guisp=NONE
hi Macro ctermfg=176 ctermbg=NONE guifg=#baa0f8 guibg=NONE cterm=NONE gui=NONE guisp=NONE
hi Error ctermfg=203 ctermbg=NONE guifg=#f76c7c guibg=NONE cterm=NONE gui=NONE guisp=NONE
hi Label ctermfg=176 ctermbg=NONE guifg=#baa0f8 guibg=NONE cterm=NONE gui=NONE guisp=NONE
hi Special ctermfg=176 ctermbg=NONE guifg=#baa0f8 guibg=NONE cterm=NONE gui=NONE guisp=NONE
hi SpecialChar ctermfg=176 ctermbg=NONE guifg=#baa0f8 guibg=NONE cterm=NONE gui=NONE guisp=NONE
hi Boolean ctermfg=176 ctermbg=NONE guifg=#baa0f8 guibg=NONE cterm=NONE gui=NONE guisp=NONE
hi String ctermfg=179 ctermbg=NONE guifg=#e3d367 guibg=NONE cterm=NONE gui=NONE guisp=NONE
hi Character ctermfg=179 ctermbg=NONE guifg=#e3d367 guibg=NONE cterm=NONE gui=NONE guisp=NONE
hi Number ctermfg=176 ctermbg=NONE guifg=#baa0f8 guibg=NONE cterm=NONE gui=NONE guisp=NONE
hi Float ctermfg=176 ctermbg=NONE guifg=#baa0f8 guibg=NONE cterm=NONE gui=NONE guisp=NONE
hi Function ctermfg=107 ctermbg=NONE guifg=#9cd57b guibg=NONE cterm=NONE gui=NONE guisp=NONE
hi Operator ctermfg=203 ctermbg=NONE guifg=#f76c7c guibg=NONE cterm=NONE gui=NONE guisp=NONE
hi Title ctermfg=203 ctermbg=NONE guifg=#f76c7c guibg=NONE cterm=bold gui=bold guisp=NONE
hi Tag ctermfg=215 ctermbg=NONE guifg=#f3a96a guibg=NONE cterm=NONE gui=NONE guisp=NONE
hi Delimiter ctermfg=250 ctermbg=NONE guifg=#e1e2e3 guibg=NONE cterm=NONE gui=NONE guisp=NONE
if g:minisonokai_disable_italic_comment
	hi Comment ctermfg=246 ctermbg=NONE guifg=#82878b guibg=NONE cterm=NONE gui=NONE guisp=NONE
	hi SpecialComment ctermfg=246 ctermbg=NONE guifg=#82878b guibg=NONE cterm=NONE gui=NONE guisp=NONE
	hi Todo ctermfg=110 ctermbg=NONE guifg=#78cee9 guibg=NONE cterm=NONE gui=NONE guisp=NONE
else
	hi Comment ctermfg=246 ctermbg=NONE guifg=#82878b guibg=NONE cterm=italic gui=italic guisp=NONE
	hi SpecialComment ctermfg=246 ctermbg=NONE guifg=#82878b guibg=NONE cterm=italic gui=italic guisp=NONE
	hi Todo ctermfg=110 ctermbg=NONE guifg=#78cee9 guibg=NONE cterm=italic gui=italic guisp=NONE
endif
hi Ignore ctermfg=246 ctermbg=NONE guifg=#82878b guibg=NONE cterm=NONE gui=NONE guisp=NONE
hi Underlined ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE cterm=underline gui=underline guisp=NONE

hi Fg ctermfg=250 ctermbg=NONE guifg=#e1e2e3 guibg=NONE cterm=NONE gui=NONE guisp=NONE
hi Grey ctermfg=246 ctermbg=NONE guifg=#82878b guibg=NONE cterm=NONE gui=NONE guisp=NONE
hi Red ctermfg=203 ctermbg=NONE guifg=#f76c7c guibg=NONE cterm=NONE gui=NONE guisp=NONE
hi Orange ctermfg=215 ctermbg=NONE guifg=#f3a96a guibg=NONE cterm=NONE gui=NONE guisp=NONE
hi Yellow ctermfg=179 ctermbg=NONE guifg=#e3d367 guibg=NONE cterm=NONE gui=NONE guisp=NONE
hi Green ctermfg=107 ctermbg=NONE guifg=#9cd57b guibg=NONE cterm=NONE gui=NONE guisp=NONE
hi Blue ctermfg=110 ctermbg=NONE guifg=#78cee9 guibg=NONE cterm=NONE gui=NONE guisp=NONE
hi Purple ctermfg=176 ctermbg=NONE guifg=#baa0f8 guibg=NONE cterm=NONE gui=NONE guisp=NONE
if g:minisonokai_enable_italic
	hi RedItalic ctermfg=203 ctermbg=NONE guifg=#f76c7c guibg=NONE cterm=italic gui=italic guisp=NONE
	hi OrangeItalic ctermfg=215 ctermbg=NONE guifg=#f3a96a guibg=NONE cterm=italic gui=italic guisp=NONE
	hi YellowItalic ctermfg=179 ctermbg=NONE guifg=#e3d367 guibg=NONE cterm=italic gui=italic guisp=NONE
	hi GreenItalic ctermfg=107 ctermbg=NONE guifg=#9cd57b guibg=NONE cterm=italic gui=italic guisp=NONE
	hi BlueItalic ctermfg=110 ctermbg=NONE guifg=#78cee9 guibg=NONE cterm=italic gui=italic guisp=NONE
	hi PurpleItalic ctermfg=176 ctermbg=NONE guifg=#baa0f8 guibg=NONE cterm=italic gui=italic guisp=NONE
else
	hi RedItalic ctermfg=203 ctermbg=NONE guifg=#f76c7c guibg=NONE cterm=NONE gui=NONE guisp=NONE
	hi OrangeItalic ctermfg=215 ctermbg=NONE guifg=#f3a96a guibg=NONE cterm=NONE gui=NONE guisp=NONE
	hi YellowItalic ctermfg=179 ctermbg=NONE guifg=#e3d367 guibg=NONE cterm=NONE gui=NONE guisp=NONE
	hi GreenItalic ctermfg=107 ctermbg=NONE guifg=#9cd57b guibg=NONE cterm=NONE gui=NONE guisp=NONE
	hi BlueItalic ctermfg=110 ctermbg=NONE guifg=#78cee9 guibg=NONE cterm=NONE gui=NONE guisp=NONE
	hi PurpleItalic ctermfg=176 ctermbg=NONE guifg=#baa0f8 guibg=NONE cterm=NONE gui=NONE guisp=NONE
endif
if g:minisonokai_transparent_background || g:minisonokai_sign_column_background !=# 'default'
	hi RedSign ctermfg=203 ctermbg=NONE guifg=#f76c7c guibg=NONE cterm=NONE gui=NONE guisp=NONE
	hi OrangeSign ctermfg=215 ctermbg=NONE guifg=#f3a96a guibg=NONE cterm=NONE gui=NONE guisp=NONE
	hi YellowSign ctermfg=179 ctermbg=NONE guifg=#e3d367 guibg=NONE cterm=NONE gui=NONE guisp=NONE
	hi GreenSign ctermfg=107 ctermbg=NONE guifg=#9cd57b guibg=NONE cterm=NONE gui=NONE guisp=NONE
	hi BlueSign ctermfg=110 ctermbg=NONE guifg=#78cee9 guibg=NONE cterm=NONE gui=NONE guisp=NONE
	hi PurpleSign ctermfg=176 ctermbg=NONE guifg=#baa0f8 guibg=NONE cterm=NONE gui=NONE guisp=NONE
else
	hi RedSign ctermfg=203 ctermbg=236 guifg=#f76c7c guibg=#313b42 cterm=NONE gui=NONE guisp=NONE
	hi OrangeSign ctermfg=215 ctermbg=236 guifg=#f3a96a guibg=#313b42 cterm=NONE gui=NONE guisp=NONE
	hi YellowSign ctermfg=179 ctermbg=236 guifg=#e3d367 guibg=#313b42 cterm=NONE gui=NONE guisp=NONE
	hi GreenSign ctermfg=107 ctermbg=236 guifg=#9cd57b guibg=#313b42 cterm=NONE gui=NONE guisp=NONE
	hi BlueSign ctermfg=110 ctermbg=236 guifg=#78cee9 guibg=#313b42 cterm=NONE gui=NONE guisp=NONE
	hi PurpleSign ctermfg=176 ctermbg=236 guifg=#baa0f8 guibg=#313b42 cterm=NONE gui=NONE guisp=NONE
endif

if g:minisonokai_diagnostic_text_highlight
	hi ErrorText ctermfg=NONE ctermbg=52 guifg=NONE guibg=#55393d cterm=underline gui=underline guisp=#f76c7c
	hi WarningText ctermfg=NONE ctermbg=54 guifg=NONE guibg=#4e432f cterm=underline gui=underline guisp=#e3d367
	hi InfoText ctermfg=NONE ctermbg=17 guifg=NONE guibg=#354157 cterm=underline gui=underline guisp=#78cee9
	hi HintText ctermfg=NONE ctermbg=22 guifg=NONE guibg=#394634 cterm=underline gui=underline guisp=#9cd57b
else
	hi ErrorText ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE cterm=underline gui=underline guisp=#f76c7c
	hi WarningText ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE cterm=underline gui=underline guisp=#e3d367
	hi InfoText ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE cterm=underline gui=underline guisp=#78cee9
	hi HintText ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE cterm=underline gui=underline guisp=#9cd57b
endif
if g:minisonokai_diagnostic_line_highlight
	hi ErrorLine ctermfg=NONE ctermbg=52 guifg=NONE guibg=#55393d cterm=NONE gui=NONE guisp=NONE
	hi WarningLine ctermfg=NONE ctermbg=54 guifg=NONE guibg=#4e432f cterm=NONE gui=NONE guisp=NONE
	hi InfoLine ctermfg=NONE ctermbg=17 guifg=NONE guibg=#354157 cterm=NONE gui=NONE guisp=NONE
	hi HintLine ctermfg=NONE ctermbg=22 guifg=NONE guibg=#394634 cterm=NONE gui=NONE guisp=NONE
else
  hi clear ErrorLine
  hi clear WarningLine
  hi clear InfoLine
  hi clear HintLine
endif


if g:minisonokai_diagnostic_virtual_text ==# 'grey'
  hi link VirtualTextWarning Grey
  hi link VirtualTextError Grey
  hi link VirtualTextInfo Grey
  hi link VirtualTextHint Grey
else
  hi link VirtualTextWarning Yellow
  hi link VirtualTextError Red
  hi link VirtualTextInfo Blue
  hi link VirtualTextHint Green
endif

hi ErrorFloat ctermfg=203 ctermbg=236 guifg=#f76c7c guibg=#353f46 cterm=NONE gui=NONE guisp=NONE
hi WarningFloat ctermfg=179 ctermbg=236 guifg=#e3d367 guibg=#353f46 cterm=NONE gui=NONE guisp=NONE
hi InfoFloat ctermfg=110 ctermbg=236 guifg=#78cee9 guibg=#353f46 cterm=NONE gui=NONE guisp=NONE
hi HintFloat ctermfg=107 ctermbg=236 guifg=#9cd57b guibg=#353f46 cterm=NONE gui=NONE guisp=NONE

if &diff
	hi CurrentWord ctermfg=235 ctermbg=107 guifg=#273136 guibg=#9cd57b cterm=NONE gui=NONE guisp=NONE
else
	hi CurrentWord ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE cterm=bold gui=bold guisp=NONE
endif

if (has('termguicolors') && &termguicolors) || has('gui_running')
  if has('nvim')
    let g:terminal_color_0 = '#181819'
    let g:terminal_color_1 = '#fc5d7c'
    let g:terminal_color_2 = '#9ed072'
    let g:terminal_color_3 = '#e7c664'
    let g:terminal_color_4 = '#76cce0'
    let g:terminal_color_5 = '#b39df3'
    let g:terminal_color_6 = '#f39660'
    let g:terminal_color_7 = '#e2e2e3'
    let g:terminal_color_8 = '#181819'
    let g:terminal_color_9 = '#fc5d7c'
    let g:terminal_color_10 = '#9ed072'
    let g:terminal_color_11 = '#e7c664'
    let g:terminal_color_12 = '#76cce0'
    let g:terminal_color_13 = '#b39df3'
    let g:terminal_color_14 = '#f39660'
    let g:terminal_color_15 = '#e2e2e3'
  else
    let g:terminal_ansi_colors = ['#181819', '#fc5d7c', '#9ed072', '#e7c664',
          \ '#76cce0', '#b39df3', '#f39660', '#e2e2e3', '#181819', '#fc5d7c',
          \ '#9ed072', '#e7c664', '#76cce0', '#b39df3', '#f39660', '#e2e2e3']
  endif
endif

hi link netrwDir Green
hi link netrwClassify Green
hi link netrwLink Grey
hi link netrwSymLink Fg
hi link netrwExe Red
hi link netrwComment Grey
hi link netrwList Yellow
hi link netrwHelpCmd Blue
hi link netrwCmdSep Grey
hi link netrwVersion Purple

hi markdownH1 ctermfg=203 ctermbg=NONE guifg=#f76c7c guibg=NONE cterm=bold gui=bold guisp=NONE
hi markdownH2 ctermfg=215 ctermbg=NONE guifg=#f3a96a guibg=NONE cterm=bold gui=bold guisp=NONE
hi markdownH3 ctermfg=179 ctermbg=NONE guifg=#e3d367 guibg=NONE cterm=bold gui=bold guisp=NONE
hi markdownH4 ctermfg=107 ctermbg=NONE guifg=#9cd57b guibg=NONE cterm=bold gui=bold guisp=NONE
hi markdownH5 ctermfg=110 ctermbg=NONE guifg=#78cee9 guibg=NONE cterm=bold gui=bold guisp=NONE
hi markdownH6 ctermfg=176 ctermbg=NONE guifg=#baa0f8 guibg=NONE cterm=bold gui=bold guisp=NONE
hi markdownUrl ctermfg=110 ctermbg=NONE guifg=#78cee9 guibg=NONE cterm=underline gui=underline guisp=NONE
hi markdownItalic ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE cterm=italic gui=italic guisp=NONE
hi markdownBold ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE cterm=bold gui=bold guisp=NONE
hi markdownItalicDelimiter ctermfg=246 ctermbg=NONE guifg=#82878b guibg=NONE cterm=italic gui=italic guisp=NONE
hi link markdownCode Green
hi link markdownCodeBlock Green
hi link markdownCodeDelimiter Green
hi link markdownBlockquote Grey
hi link markdownListMarker Red
hi link markdownOrderedListMarker Red
hi link markdownRule Purple
hi link markdownHeadingRule Grey
hi link markdownUrlDelimiter Grey
hi link markdownLinkDelimiter Grey
hi link markdownLinkTextDelimiter Grey
hi link markdownHeadingDelimiter Grey
hi link markdownLinkText Red
hi link markdownUrlTitleDelimiter Green
hi link markdownIdDeclaration markdownLinkText
hi link markdownBoldDelimiter Grey
hi link markdownId Yellow

hi link texStatement BlueItalic
hi link texOnlyMath Grey
hi link texDefName Yellow
hi link texNewCmd Orange
hi link texCmdName Blue
hi link texBeginEnd Red
hi link texBeginEndName Green
hi link texDocType RedItalic
hi link texDocTypeArgs Orange
hi link texInputFile Green

hi htmlH1 ctermfg=203 ctermbg=NONE guifg=#f76c7c guibg=NONE cterm=bold gui=bold guisp=NONE
hi htmlH2 ctermfg=215 ctermbg=NONE guifg=#f3a96a guibg=NONE cterm=bold gui=bold guisp=NONE
hi htmlH3 ctermfg=179 ctermbg=NONE guifg=#e3d367 guibg=NONE cterm=bold gui=bold guisp=NONE
hi htmlH4 ctermfg=107 ctermbg=NONE guifg=#9cd57b guibg=NONE cterm=bold gui=bold guisp=NONE
hi htmlH5 ctermfg=110 ctermbg=NONE guifg=#78cee9 guibg=NONE cterm=bold gui=bold guisp=NONE
hi htmlH6 ctermfg=176 ctermbg=NONE guifg=#baa0f8 guibg=NONE cterm=bold gui=bold guisp=NONE
hi htmlLink ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE cterm=underline gui=underline guisp=NONE
hi htmlBold ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE cterm=bold gui=bold guisp=NONE
hi htmlBoldUnderline ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE cterm=bold,underline gui=bold,underline guisp=NONE
hi htmlBoldItalic ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE cterm=bold,italic gui=bold,italic guisp=NONE
hi htmlBoldUnderlineItalic ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE cterm=bold,underline,italic gui=bold,underline,italic guisp=NONE
hi htmlUnderline ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE cterm=underline gui=underline guisp=NONE
hi htmlUnderlineItalic ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE cterm=underline,italic gui=underline,italic guisp=NONE
hi htmlItalic ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE cterm=italic gui=italic guisp=NONE
hi link htmlTag Green
hi link htmlEndTag Blue
hi link htmlTagN RedItalic
hi link htmlTagName RedItalic
hi link htmlArg Blue
hi link htmlScriptTag Purple
hi link htmlSpecialTagName RedItalic
hi link htmlString Green

hi link xmlTag Green
hi link xmlEndTag Blue
hi link xmlTagName RedItalic
hi link xmlEqual Orange
hi link xmlAttrib Blue
hi link xmlEntity Red
hi link xmlEntityPunct Red
hi link xmlDocTypeDecl Grey
hi link xmlDocTypeKeyword RedItalic
hi link xmlCdataStart Grey
hi link xmlCdataCdata Purple
hi link xmlString Green

hi link cssStringQ Green
hi link cssStringQQ Green
hi link cssAttrComma Grey
hi link cssBraces Grey
hi link cssTagName Purple
hi link cssClassNameDot Grey
hi link cssClassName Red
hi link cssFunctionName Orange
hi link cssAttr Green
hi link cssCommonAttr Green
hi link cssProp Blue
hi link cssPseudoClassId Yellow
hi link cssPseudoClassFn Green
hi link cssPseudoClass Yellow
hi link cssImportant Red
hi link cssSelectorOp Orange
hi link cssSelectorOp2 Orange
hi link cssColor Green
hi link cssUnitDecorators Green
hi link cssValueLength Green
hi link cssValueInteger Green
hi link cssValueNumber Green
hi link cssValueAngle Green
hi link cssValueTime Green
hi link cssValueFrequency Green
hi link cssVendor Grey
hi link cssNoise Grey

hi link scssMixinName Orange
hi link scssSelectorChar Grey
hi link scssSelectorName Red
hi link scssInterpolationDelimiter Yellow
hi link scssVariableValue Green
hi link scssNull Purple
hi link scssBoolean Purple
hi link scssVariableAssignment Grey
hi link scssAttribute Green
hi link scssFunctionName Orange
hi link scssVariable Fg
hi link scssAmpersand Purple

hi link lessMixinChar Grey
hi link lessClass Red
hi link lessFunction Orange

hi link javaScriptNull OrangeItalic
hi link javaScriptIdentifier BlueItalic
hi link javaScriptParens Fg
hi link javaScriptBraces Fg
hi link javaScriptNumber Purple
hi link javaScriptLabel Red
hi link javaScriptGlobal BlueItalic
hi link javaScriptMessage BlueItalic

hi link csUnspecifiedStatement Red
hi link csStorage Red
hi link csClass Red
hi link csNewType BlueItalic
hi link csContextualStatement Red
hi link csInterpolationDelimiter Purple
hi link csInterpolation Purple
hi link csEndColon Fg

hi link pythonBuiltin BlueItalic
hi link pythonExceptions Red
hi link pythonDecoratorName OrangeItalic

hi link luaFunc Green
hi link luaFunction Red
hi link luaTable Fg
hi link luaIn Red

hi link javaClassDecl Red
hi link javaMethodDecl Red
hi link javaVarArg Fg
hi link javaAnnotation Purple
hi link javaUserLabel Purple
hi link javaTypedef OrangeItalic
hi link javaParen Fg
hi link javaParen1 Fg
hi link javaParen2 Fg
hi link javaParen3 Fg
hi link javaParen4 Fg
hi link javaParen5 Fg

hi link scalaNameDefinition Fg
hi link scalaInterpolationBoundary Purple
hi link scalaInterpolation Purple
hi link scalaTypeOperator Red
hi link scalaOperator Red
hi link scalaKeywordModifier Red

hi link goDirective Red
hi link goConstants OrangeItalic
hi link goDeclType Red

hi link rustStructure Red
hi link rustIdentifier OrangeItalic
"hi link rustModPath BlueItalic
"hi link rustModPathSep Grey
hi link rustSelf OrangeItalic
hi link rustSuper OrangeItalic
hi link rustDeriveTrait Purple
hi link rustEnumVariant Purple
hi link rustMacroVariable OrangeItalic
hi link rustAssert Green
hi link rustPanic Green
hi link rustPubScopeCrate BlueItalic
"hi link rustAttribute Purple

hi link phpVarSelector Fg
hi link phpIdentifier Fg
hi link phpDefine Green
hi link phpStructure Red
hi link phpSpecialFunction Green
hi link phpInterpSimpleCurly Purple
hi link phpComparison Red
hi link phpMethodsVar Fg
hi link phpInterpVarname Fg
hi link phpMemberSelector Red
hi link phpLabel Red

hi link rubyKeywordAsMethod Green
hi link rubyInterpolation Purple
hi link rubyInterpolationDelimiter Purple
hi link rubyStringDelimiter Yellow
hi link rubyBlockParameterList Fg
hi link rubyDefine Red
hi link rubyModuleName Red
hi link rubyAccess Red
hi link rubyMacro Red
hi link rubySymbol Fg

hi link perlStatementPackage Red
hi link perlStatementInclude Red
hi link perlStatementStorage Red
hi link perlStatementList Red
hi link perlMatchStartEnd Red
hi link perlVarSimpleMemberName Green
hi link perlVarSimpleMember Fg
hi link perlMethod Green
hi link podVerbatimLine Green
hi link podCmdText Yellow
hi link perlVarPlain Fg
hi link perlVarPlain2 Fg

hi link ocamlArrow Red
hi link ocamlEqual Red
hi link ocamlOperator Red
hi link ocamlKeyChar Red
hi link ocamlModPath Green
hi link ocamlFullMod Green
hi link ocamlModule BlueItalic
hi link ocamlConstructor Orange
hi link ocamlModParam Fg
hi link ocamlModParam1 Fg
hi link ocamlAnyVar Fg " aqua
hi link ocamlPpxEncl Red
hi link ocamlPpxIdentifier Fg
hi link ocamlSigEncl Red
hi link ocamlModParam1 Fg

hi link erlangAtom Fg
hi link erlangVariable Fg
hi link erlangLocalFuncRef Green
hi link erlangLocalFuncCall Green
hi link erlangGlobalFuncRef Green
hi link erlangGlobalFuncCall Green
hi link erlangAttribute BlueItalic
hi link erlangPipe Red

hi link lispAtomMark Purple
hi link lispKey Orange
hi link lispFunc Green

hi link clojureMacro Red
hi link clojureFunc Green
hi link clojureConstant OrangeItalic
hi link clojureSpecial Red
hi link clojureDefine Red
hi link clojureKeyword Blue
hi link clojureVariable Fg
hi link clojureMeta Purple
hi link clojureDeref Purple

hi link shRange Fg
hi link shOption Purple
hi link shQuote Yellow
hi link shVariable BlueItalic
hi link shDerefSimple BlueItalic
hi link shDerefVar BlueItalic
hi link shDerefSpecial BlueItalic
hi link shDerefOff BlueItalic
hi link shVarAssign Red
hi link shFunctionOne Green
hi link shFunctionKey Red

hi link zshOption BlueItalic
hi link zshSubst Orange
hi link zshFunction Green

hi vimCommentTitle ctermfg=246 ctermbg=NONE guifg=#82878b guibg=NONE cterm=bold gui=bold guisp=NONE
hi link vimLet Red
hi link vimFunction Green
hi link vimIsCommand Fg
hi link vimUserFunc Green
hi link vimFuncName Green
hi link vimMap BlueItalic
hi link vimNotation Purple
hi link vimMapLhs Green
hi link vimMapRhs Green
hi link vimSetEqual BlueItalic
hi link vimSetSep Fg
hi link vimOption BlueItalic
hi link vimUserAttrbKey BlueItalic
hi link vimUserAttrb Green
hi link vimAutoCmdSfxList Orange
hi link vimSynType Orange
hi link vimHiBang Orange
hi link vimSet BlueItalic
hi link vimSetSep Grey

hi link makeIdent Purple
hi link makeSpecTarget BlueItalic
hi link makeTarget Orange
hi link makeCommands Red

hi link cmakeCommand Red
hi link cmakeKWconfigure_package_config_file BlueItalic
hi link cmakeKWwrite_basic_package_version_file BlueItalic
hi link cmakeKWExternalProject Green
hi link cmakeKWadd_compile_definitions Green
hi link cmakeKWadd_compile_options Green
hi link cmakeKWadd_custom_command Green
hi link cmakeKWadd_custom_target Green
hi link cmakeKWadd_definitions Green
hi link cmakeKWadd_dependencies Green
hi link cmakeKWadd_executable Green
hi link cmakeKWadd_library Green
hi link cmakeKWadd_link_options Green
hi link cmakeKWadd_subdirectory Green
hi link cmakeKWadd_test Green
hi link cmakeKWbuild_command Green
hi link cmakeKWcmake_host_system_information Green
hi link cmakeKWcmake_minimum_required Green
hi link cmakeKWcmake_parse_arguments Green
hi link cmakeKWcmake_policy Green
hi link cmakeKWconfigure_file Green
hi link cmakeKWcreate_test_sourcelist Green
hi link cmakeKWctest_build Green
hi link cmakeKWctest_configure Green
hi link cmakeKWctest_coverage Green
hi link cmakeKWctest_memcheck Green
hi link cmakeKWctest_run_script Green
hi link cmakeKWctest_start Green
hi link cmakeKWctest_submit Green
hi link cmakeKWctest_test Green
hi link cmakeKWctest_update Green
hi link cmakeKWctest_upload Green
hi link cmakeKWdefine_property Green
hi link cmakeKWdoxygen_add_docs Green
hi link cmakeKWenable_language Green
hi link cmakeKWenable_testing Green
hi link cmakeKWexec_program Green
hi link cmakeKWexecute_process Green
hi link cmakeKWexport Green
hi link cmakeKWexport_library_dependencies Green
hi link cmakeKWfile Green
hi link cmakeKWfind_file Green
hi link cmakeKWfind_library Green
hi link cmakeKWfind_package Green
hi link cmakeKWfind_path Green
hi link cmakeKWfind_program Green
hi link cmakeKWfltk_wrap_ui Green
hi link cmakeKWforeach Green
hi link cmakeKWfunction Green
hi link cmakeKWget_cmake_property Green
hi link cmakeKWget_directory_property Green
hi link cmakeKWget_filename_component Green
hi link cmakeKWget_property Green
hi link cmakeKWget_source_file_property Green
hi link cmakeKWget_target_property Green
hi link cmakeKWget_test_property Green
hi link cmakeKWif Green
hi link cmakeKWinclude Green
hi link cmakeKWinclude_directories Green
hi link cmakeKWinclude_external_msproject Green
hi link cmakeKWinclude_guard Green
hi link cmakeKWinstall Green
hi link cmakeKWinstall_files Green
hi link cmakeKWinstall_programs Green
hi link cmakeKWinstall_targets Green
hi link cmakeKWlink_directories Green
hi link cmakeKWlist Green
hi link cmakeKWload_cache Green
hi link cmakeKWload_command Green
hi link cmakeKWmacro Green
hi link cmakeKWmark_as_advanced Green
hi link cmakeKWmath Green
hi link cmakeKWmessage Green
hi link cmakeKWoption Green
hi link cmakeKWproject Green
hi link cmakeKWqt_wrap_cpp Green
hi link cmakeKWqt_wrap_ui Green
hi link cmakeKWremove Green
hi link cmakeKWseparate_arguments Green
hi link cmakeKWset Green
hi link cmakeKWset_directory_properties Green
hi link cmakeKWset_property Green
hi link cmakeKWset_source_files_properties Green
hi link cmakeKWset_target_properties Green
hi link cmakeKWset_tests_properties Green
hi link cmakeKWsource_group Green
hi link cmakeKWstring Green
hi link cmakeKWsubdirs Green
hi link cmakeKWtarget_compile_definitions Green
hi link cmakeKWtarget_compile_features Green
hi link cmakeKWtarget_compile_options Green
hi link cmakeKWtarget_include_directories Green
hi link cmakeKWtarget_link_directories Green
hi link cmakeKWtarget_link_libraries Green
hi link cmakeKWtarget_link_options Green
hi link cmakeKWtarget_precompile_headers Green
hi link cmakeKWtarget_sources Green
hi link cmakeKWtry_compile Green
hi link cmakeKWtry_run Green
hi link cmakeKWunset Green
hi link cmakeKWuse_mangled_mesa Green
hi link cmakeKWvariable_requires Green
hi link cmakeKWvariable_watch Green
hi link cmakeKWwrite_file Green

hi link jsonKeyword Red
hi link jsonString Green
hi link jsonBoolean Blue
hi link jsonNoise Grey
hi link jsonQuote Grey
hi link jsonBraces Fg

hi link yamlKey Red
hi link yamlConstant BlueItalic
hi link yamlString Green

hi tomlTable ctermfg=176 ctermbg=NONE guifg=#baa0f8 guibg=NONE cterm=bold gui=bold guisp=NONE
hi link tomlKey Red
hi link tomlBoolean Blue
hi link tomlString Green
hi link tomlTableArray tomlTable

hi link gitcommitSummary Red
hi link gitcommitUntracked Grey
hi link gitcommitDiscarded Grey
hi link gitcommitSelected Grey
hi link gitcommitUnmerged Grey
hi link gitcommitOnBranch Grey
hi link gitcommitArrow Grey
hi link gitcommitFile Green

hi dosiniHeader ctermfg=203 ctermbg=NONE guifg=#f76c7c guibg=NONE cterm=bold gui=bold guisp=NONE
hi link dosiniLabel Blue
hi link dosiniValue Green
hi link dosiniNumber Green

hi helpNote ctermfg=176 ctermbg=NONE guifg=#baa0f8 guibg=NONE cterm=bold gui=bold guisp=NONE
hi helpHeadline ctermfg=203 ctermbg=NONE guifg=#f76c7c guibg=NONE cterm=bold gui=bold guisp=NONE
hi helpHeader ctermfg=215 ctermbg=NONE guifg=#f3a96a guibg=NONE cterm=bold gui=bold guisp=NONE
hi helpURL ctermfg=107 ctermbg=NONE guifg=#9cd57b guibg=NONE cterm=underline gui=underline guisp=NONE
hi helpHyperTextEntry ctermfg=110 ctermbg=NONE guifg=#78cee9 guibg=NONE cterm=bold gui=bold guisp=NONE
hi link helpHyperTextJump Blue
hi link helpCommand Yellow
hi link helpExample Green
hi link helpSpecial Purple
hi link helpSectionDelim Grey
