" This scheme was created by CSApproxSnapshot
" on Fri, 28 Jan 2011

hi clear
if exists("syntax_on")
    syntax reset
endif

if v:version < 700
    let g:colors_name = expand("<sfile>:t:r")
    command! -nargs=+ CSAHi exe "hi" substitute(substitute(<q-args>, "undercurl", "underline", "g"), "guisp\\S\\+", "", "g")
else
    let g:colors_name = expand("<sfile>:t:r")
    command! -nargs=+ CSAHi exe "hi" <q-args>
endif

if 0
elseif has("gui_running") || (&t_Co == 256 && (&term ==# "xterm" || &term =~# "^screen") && exists("g:CSApprox_konsole") && g:CSApprox_konsole) || &term =~? "^konsole"
    CSAHi Normal term=NONE cterm=NONE ctermbg=16 ctermfg=255 gui=NONE guibg=#000000 guifg=#eeeeee
    CSAHi rubyMethod term=NONE cterm=NONE ctermbg=bg ctermfg=191 gui=NONE guibg=bg guifg=#dde93d
    CSAHi PreProc term=underline cterm=NONE ctermbg=bg ctermfg=159 gui=NONE guibg=bg guifg=#aaffff
    CSAHi Type term=underline cterm=NONE ctermbg=bg ctermfg=144 gui=NONE guibg=bg guifg=#aaaa77
    CSAHi Underlined term=underline cterm=underline ctermbg=bg ctermfg=147 gui=underline guibg=bg guifg=#80a0ff
    CSAHi Ignore term=NONE cterm=NONE ctermbg=bg ctermfg=16 gui=NONE guibg=bg guifg=#000000
    CSAHi Error term=reverse cterm=NONE ctermbg=196 ctermfg=231 gui=NONE guibg=#ff0000 guifg=#ffffff
    CSAHi Todo term=NONE cterm=NONE ctermbg=226 ctermfg=21 gui=NONE guibg=#ffff00 guifg=#0000ff
    CSAHi String term=NONE cterm=NONE ctermbg=bg ctermfg=118 gui=NONE guibg=bg guifg=#66ff00
    CSAHi SpecialKey term=bold cterm=NONE ctermbg=bg ctermfg=238 gui=NONE guibg=bg guifg=#404040
    CSAHi NonText term=bold cterm=bold ctermbg=bg ctermfg=238 gui=bold guibg=bg guifg=#404040
    CSAHi ErrorMsg term=NONE cterm=NONE ctermbg=196 ctermfg=fg gui=NONE guibg=#ff0000 guifg=fg
    CSAHi IncSearch term=reverse cterm=NONE ctermbg=231 ctermfg=16 gui=reverse guibg=#000000 guifg=#ffffff
    CSAHi Search term=reverse cterm=NONE ctermbg=240 ctermfg=fg gui=NONE guibg=#555555 guifg=fg
    CSAHi MoreMsg term=bold cterm=bold ctermbg=bg ctermfg=34 gui=bold guibg=bg guifg=#00aa00
    CSAHi ModeMsg term=bold cterm=bold ctermbg=bg ctermfg=fg gui=bold guibg=bg guifg=fg
    CSAHi LineNr term=underline cterm=NONE ctermbg=235 ctermfg=195 gui=NONE guibg=#222222 guifg=#ddeeff
    CSAHi ConId term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi VarId term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi hsDelimiter term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi SpellLocal term=underline cterm=undercurl ctermbg=bg ctermfg=51 gui=undercurl guibg=bg guifg=fg guisp=#00ffff
    CSAHi Pmenu term=NONE cterm=bold ctermbg=19 ctermfg=231 gui=bold guibg=#000099 guifg=#ffffff
    CSAHi PmenuSel term=NONE cterm=bold ctermbg=105 ctermfg=231 gui=bold guibg=#5555ff guifg=#ffffff
    CSAHi PmenuSbar term=NONE cterm=NONE ctermbg=250 ctermfg=fg gui=NONE guibg=#bebebe guifg=fg
    CSAHi PmenuThumb term=NONE cterm=NONE ctermbg=255 ctermfg=231 gui=reverse guibg=#ffffff guifg=fg
    CSAHi TabLine term=underline cterm=underline ctermbg=59 ctermfg=250 gui=underline guibg=#333333 guifg=#bbbbbb
    CSAHi TabLineSel term=bold cterm=bold ctermbg=16 ctermfg=231 gui=bold guibg=#000000 guifg=#ffffff
    CSAHi TabLineFill term=reverse cterm=underline ctermbg=244 ctermfg=250 gui=underline guibg=#808080 guifg=#bbbbbb
    CSAHi CursorColumn term=reverse cterm=NONE ctermbg=59 ctermfg=fg gui=NONE guibg=#333333 guifg=fg
    CSAHi CursorLine term=underline cterm=NONE ctermbg=59 ctermfg=fg gui=NONE guibg=#333333 guifg=fg
    CSAHi rubyString term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi Regexp term=NONE cterm=NONE ctermbg=bg ctermfg=80 gui=NONE guibg=bg guifg=#44b4cc
    CSAHi StatusLine term=reverse,bold cterm=bold ctermbg=153 ctermfg=16 gui=bold guibg=#aabbee guifg=#000000
    CSAHi StatusLineNC term=reverse cterm=NONE ctermbg=248 ctermfg=238 gui=NONE guibg=#aaaaaa guifg=#444444
    CSAHi VertSplit term=reverse cterm=NONE ctermbg=255 ctermfg=16 gui=reverse guibg=bg guifg=fg
    CSAHi Title term=bold cterm=bold ctermbg=bg ctermfg=201 gui=bold guibg=bg guifg=#ff00ff
    CSAHi Visual term=reverse cterm=NONE ctermbg=102 ctermfg=fg gui=NONE guibg=#555577 guifg=fg
    CSAHi VisualNOS term=bold,underline cterm=NONE ctermbg=238 ctermfg=fg gui=NONE guibg=#444444 guifg=fg
    CSAHi WarningMsg term=NONE cterm=NONE ctermbg=bg ctermfg=196 gui=NONE guibg=bg guifg=#ff0000
    CSAHi WildMenu term=NONE cterm=bold ctermbg=226 ctermfg=16 gui=bold guibg=#ffff00 guifg=#000000
    CSAHi Folded term=NONE cterm=NONE ctermbg=18 ctermfg=153 gui=NONE guibg=#110077 guifg=#aaddee
    CSAHi ColorColumn term=reverse cterm=NONE ctermbg=124 ctermfg=fg gui=NONE guibg=#8b0000 guifg=fg
    CSAHi Cursor term=NONE cterm=NONE ctermbg=231 ctermfg=16 gui=NONE guibg=#ffffff guifg=#000000
    CSAHi lCursor term=NONE cterm=NONE ctermbg=255 ctermfg=16 gui=NONE guibg=#eeeeee guifg=#000000
    CSAHi MatchParen term=reverse cterm=NONE ctermbg=19 ctermfg=fg gui=NONE guibg=#1100aa guifg=fg
    CSAHi Comment term=bold cterm=NONE ctermbg=bg ctermfg=134 gui=italic guibg=bg guifg=#9933cc
    CSAHi Constant term=underline cterm=NONE ctermbg=bg ctermfg=73 gui=NONE guibg=bg guifg=#339999
    CSAHi Special term=bold cterm=NONE ctermbg=bg ctermfg=70 gui=NONE guibg=bg guifg=#33aa00
    CSAHi Identifier term=underline cterm=NONE ctermbg=bg ctermfg=220 gui=NONE guibg=bg guifg=#ffcc00
    CSAHi Statement term=bold cterm=NONE ctermbg=bg ctermfg=208 gui=NONE guibg=bg guifg=#ff6600
    CSAHi railsUserClass term=NONE cterm=NONE ctermbg=bg ctermfg=248 gui=italic guibg=bg guifg=#aaaaaa
    CSAHi railsUserMethod term=NONE cterm=NONE ctermbg=bg ctermfg=153 gui=italic guibg=bg guifg=#aaccff
    CSAHi rubyNumber term=NONE cterm=NONE ctermbg=bg ctermfg=191 gui=NONE guibg=bg guifg=#ccff33
    CSAHi DiffAdd term=bold cterm=NONE ctermbg=19 ctermfg=fg gui=NONE guibg=#00008b guifg=fg
    CSAHi DiffChange term=bold cterm=NONE ctermbg=127 ctermfg=fg gui=NONE guibg=#8b008b guifg=fg
    CSAHi DiffDelete term=bold cterm=bold ctermbg=37 ctermfg=21 gui=bold guibg=#008b8b guifg=#0000ff
    CSAHi DiffText term=reverse cterm=bold ctermbg=196 ctermfg=fg gui=bold guibg=#ff0000 guifg=fg
    CSAHi SignColumn term=NONE cterm=NONE ctermbg=250 ctermfg=51 gui=NONE guibg=#bebebe guifg=#00ffff
    CSAHi Conceal term=NONE cterm=NONE ctermbg=248 ctermfg=252 gui=NONE guibg=#a9a9a9 guifg=#d3d3d3
    CSAHi SpellBad term=reverse cterm=undercurl ctermbg=bg ctermfg=196 gui=undercurl guibg=bg guifg=fg guisp=#ff0000
    CSAHi SpellCap term=reverse cterm=undercurl ctermbg=bg ctermfg=21 gui=undercurl guibg=bg guifg=fg guisp=#0000ff
    CSAHi SpellRare term=reverse cterm=undercurl ctermbg=bg ctermfg=201 gui=undercurl guibg=bg guifg=fg guisp=#ff00ff
elseif has("gui_running") || (&t_Co == 256 && (&term ==# "xterm" || &term =~# "^screen") && exists("g:CSApprox_eterm") && g:CSApprox_eterm) || &term =~? "^eterm"
    CSAHi Normal term=NONE cterm=NONE ctermbg=16 ctermfg=255 gui=NONE guibg=#000000 guifg=#eeeeee
    CSAHi rubyMethod term=NONE cterm=NONE ctermbg=bg ctermfg=227 gui=NONE guibg=bg guifg=#dde93d
    CSAHi PreProc term=underline cterm=NONE ctermbg=bg ctermfg=195 gui=NONE guibg=bg guifg=#aaffff
    CSAHi Type term=underline cterm=NONE ctermbg=bg ctermfg=187 gui=NONE guibg=bg guifg=#aaaa77
    CSAHi Underlined term=underline cterm=underline ctermbg=bg ctermfg=153 gui=underline guibg=bg guifg=#80a0ff
    CSAHi Ignore term=NONE cterm=NONE ctermbg=bg ctermfg=16 gui=NONE guibg=bg guifg=#000000
    CSAHi Error term=reverse cterm=NONE ctermbg=196 ctermfg=255 gui=NONE guibg=#ff0000 guifg=#ffffff
    CSAHi Todo term=NONE cterm=NONE ctermbg=226 ctermfg=21 gui=NONE guibg=#ffff00 guifg=#0000ff
    CSAHi String term=NONE cterm=NONE ctermbg=bg ctermfg=118 gui=NONE guibg=bg guifg=#66ff00
    CSAHi SpecialKey term=bold cterm=NONE ctermbg=bg ctermfg=238 gui=NONE guibg=bg guifg=#404040
    CSAHi NonText term=bold cterm=bold ctermbg=bg ctermfg=238 gui=bold guibg=bg guifg=#404040
    CSAHi ErrorMsg term=NONE cterm=NONE ctermbg=196 ctermfg=fg gui=NONE guibg=#ff0000 guifg=fg
    CSAHi IncSearch term=reverse cterm=NONE ctermbg=255 ctermfg=16 gui=reverse guibg=#000000 guifg=#ffffff
    CSAHi Search term=reverse cterm=NONE ctermbg=102 ctermfg=fg gui=NONE guibg=#555555 guifg=fg
    CSAHi MoreMsg term=bold cterm=bold ctermbg=bg ctermfg=40 gui=bold guibg=bg guifg=#00aa00
    CSAHi ModeMsg term=bold cterm=bold ctermbg=bg ctermfg=fg gui=bold guibg=bg guifg=fg
    CSAHi LineNr term=underline cterm=NONE ctermbg=235 ctermfg=231 gui=NONE guibg=#222222 guifg=#ddeeff
    CSAHi ConId term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi VarId term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi hsDelimiter term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi SpellLocal term=underline cterm=undercurl ctermbg=bg ctermfg=51 gui=undercurl guibg=bg guifg=fg guisp=#00ffff
    CSAHi Pmenu term=NONE cterm=bold ctermbg=20 ctermfg=255 gui=bold guibg=#000099 guifg=#ffffff
    CSAHi PmenuSel term=NONE cterm=bold ctermbg=105 ctermfg=255 gui=bold guibg=#5555ff guifg=#ffffff
    CSAHi PmenuSbar term=NONE cterm=NONE ctermbg=250 ctermfg=fg gui=NONE guibg=#bebebe guifg=fg
    CSAHi PmenuThumb term=NONE cterm=NONE ctermbg=255 ctermfg=255 gui=reverse guibg=#ffffff guifg=fg
    CSAHi TabLine term=underline cterm=underline ctermbg=236 ctermfg=250 gui=underline guibg=#333333 guifg=#bbbbbb
    CSAHi TabLineSel term=bold cterm=bold ctermbg=16 ctermfg=255 gui=bold guibg=#000000 guifg=#ffffff
    CSAHi TabLineFill term=reverse cterm=underline ctermbg=244 ctermfg=250 gui=underline guibg=#808080 guifg=#bbbbbb
    CSAHi CursorColumn term=reverse cterm=NONE ctermbg=236 ctermfg=fg gui=NONE guibg=#333333 guifg=fg
    CSAHi CursorLine term=underline cterm=NONE ctermbg=236 ctermfg=fg gui=NONE guibg=#333333 guifg=fg
    CSAHi rubyString term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi Regexp term=NONE cterm=NONE ctermbg=bg ctermfg=117 gui=NONE guibg=bg guifg=#44b4cc
    CSAHi StatusLine term=reverse,bold cterm=bold ctermbg=189 ctermfg=16 gui=bold guibg=#aabbee guifg=#000000
    CSAHi StatusLineNC term=reverse cterm=NONE ctermbg=188 ctermfg=238 gui=NONE guibg=#aaaaaa guifg=#444444
    CSAHi VertSplit term=reverse cterm=NONE ctermbg=255 ctermfg=16 gui=reverse guibg=bg guifg=fg
    CSAHi Title term=bold cterm=bold ctermbg=bg ctermfg=201 gui=bold guibg=bg guifg=#ff00ff
    CSAHi Visual term=reverse cterm=NONE ctermbg=103 ctermfg=fg gui=NONE guibg=#555577 guifg=fg
    CSAHi VisualNOS term=bold,underline cterm=NONE ctermbg=238 ctermfg=fg gui=NONE guibg=#444444 guifg=fg
    CSAHi WarningMsg term=NONE cterm=NONE ctermbg=bg ctermfg=196 gui=NONE guibg=bg guifg=#ff0000
    CSAHi WildMenu term=NONE cterm=bold ctermbg=226 ctermfg=16 gui=bold guibg=#ffff00 guifg=#000000
    CSAHi Folded term=NONE cterm=NONE ctermbg=19 ctermfg=195 gui=NONE guibg=#110077 guifg=#aaddee
    CSAHi ColorColumn term=reverse cterm=NONE ctermbg=124 ctermfg=fg gui=NONE guibg=#8b0000 guifg=fg
    CSAHi Cursor term=NONE cterm=NONE ctermbg=255 ctermfg=16 gui=NONE guibg=#ffffff guifg=#000000
    CSAHi lCursor term=NONE cterm=NONE ctermbg=255 ctermfg=16 gui=NONE guibg=#eeeeee guifg=#000000
    CSAHi MatchParen term=reverse cterm=NONE ctermbg=20 ctermfg=fg gui=NONE guibg=#1100aa guifg=fg
    CSAHi Comment term=bold cterm=NONE ctermbg=bg ctermfg=171 gui=italic guibg=bg guifg=#9933cc
    CSAHi Constant term=underline cterm=NONE ctermbg=bg ctermfg=80 gui=NONE guibg=bg guifg=#339999
    CSAHi Special term=bold cterm=NONE ctermbg=bg ctermfg=76 gui=NONE guibg=bg guifg=#33aa00
    CSAHi Identifier term=underline cterm=NONE ctermbg=bg ctermfg=226 gui=NONE guibg=bg guifg=#ffcc00
    CSAHi Statement term=bold cterm=NONE ctermbg=bg ctermfg=208 gui=NONE guibg=bg guifg=#ff6600
    CSAHi railsUserClass term=NONE cterm=NONE ctermbg=bg ctermfg=188 gui=italic guibg=bg guifg=#aaaaaa
    CSAHi railsUserMethod term=NONE cterm=NONE ctermbg=bg ctermfg=195 gui=italic guibg=bg guifg=#aaccff
    CSAHi rubyNumber term=NONE cterm=NONE ctermbg=bg ctermfg=227 gui=NONE guibg=bg guifg=#ccff33
    CSAHi DiffAdd term=bold cterm=NONE ctermbg=19 ctermfg=fg gui=NONE guibg=#00008b guifg=fg
    CSAHi DiffChange term=bold cterm=NONE ctermbg=127 ctermfg=fg gui=NONE guibg=#8b008b guifg=fg
    CSAHi DiffDelete term=bold cterm=bold ctermbg=37 ctermfg=21 gui=bold guibg=#008b8b guifg=#0000ff
    CSAHi DiffText term=reverse cterm=bold ctermbg=196 ctermfg=fg gui=bold guibg=#ff0000 guifg=fg
    CSAHi SignColumn term=NONE cterm=NONE ctermbg=250 ctermfg=51 gui=NONE guibg=#bebebe guifg=#00ffff
    CSAHi Conceal term=NONE cterm=NONE ctermbg=248 ctermfg=231 gui=NONE guibg=#a9a9a9 guifg=#d3d3d3
    CSAHi SpellBad term=reverse cterm=undercurl ctermbg=bg ctermfg=196 gui=undercurl guibg=bg guifg=fg guisp=#ff0000
    CSAHi SpellCap term=reverse cterm=undercurl ctermbg=bg ctermfg=21 gui=undercurl guibg=bg guifg=fg guisp=#0000ff
    CSAHi SpellRare term=reverse cterm=undercurl ctermbg=bg ctermfg=201 gui=undercurl guibg=bg guifg=fg guisp=#ff00ff
elseif has("gui_running") || &t_Co == 256
    CSAHi Normal term=NONE cterm=NONE ctermbg=16 ctermfg=255 gui=NONE guibg=#000000 guifg=#eeeeee
    CSAHi rubyMethod term=NONE cterm=NONE ctermbg=bg ctermfg=185 gui=NONE guibg=bg guifg=#dde93d
    CSAHi PreProc term=underline cterm=NONE ctermbg=bg ctermfg=159 gui=NONE guibg=bg guifg=#aaffff
    CSAHi Type term=underline cterm=NONE ctermbg=bg ctermfg=144 gui=NONE guibg=bg guifg=#aaaa77
    CSAHi Underlined term=underline cterm=underline ctermbg=bg ctermfg=111 gui=underline guibg=bg guifg=#80a0ff
    CSAHi Ignore term=NONE cterm=NONE ctermbg=bg ctermfg=16 gui=NONE guibg=bg guifg=#000000
    CSAHi Error term=reverse cterm=NONE ctermbg=196 ctermfg=231 gui=NONE guibg=#ff0000 guifg=#ffffff
    CSAHi Todo term=NONE cterm=NONE ctermbg=226 ctermfg=21 gui=NONE guibg=#ffff00 guifg=#0000ff
    CSAHi String term=NONE cterm=NONE ctermbg=bg ctermfg=82 gui=NONE guibg=bg guifg=#66ff00
    CSAHi SpecialKey term=bold cterm=NONE ctermbg=bg ctermfg=238 gui=NONE guibg=bg guifg=#404040
    CSAHi NonText term=bold cterm=bold ctermbg=bg ctermfg=238 gui=bold guibg=bg guifg=#404040
    CSAHi ErrorMsg term=NONE cterm=NONE ctermbg=196 ctermfg=fg gui=NONE guibg=#ff0000 guifg=fg
    CSAHi IncSearch term=reverse cterm=NONE ctermbg=231 ctermfg=16 gui=reverse guibg=#000000 guifg=#ffffff
    CSAHi Search term=reverse cterm=NONE ctermbg=240 ctermfg=fg gui=NONE guibg=#555555 guifg=fg
    CSAHi MoreMsg term=bold cterm=bold ctermbg=bg ctermfg=34 gui=bold guibg=bg guifg=#00aa00
    CSAHi ModeMsg term=bold cterm=bold ctermbg=bg ctermfg=fg gui=bold guibg=bg guifg=fg
    CSAHi LineNr term=underline cterm=NONE ctermbg=235 ctermfg=195 gui=NONE guibg=#222222 guifg=#ddeeff
    CSAHi ConId term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi VarId term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi hsDelimiter term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi SpellLocal term=underline cterm=undercurl ctermbg=bg ctermfg=51 gui=undercurl guibg=bg guifg=fg guisp=#00ffff
    CSAHi Pmenu term=NONE cterm=bold ctermbg=18 ctermfg=231 gui=bold guibg=#000099 guifg=#ffffff
    CSAHi PmenuSel term=NONE cterm=bold ctermbg=63 ctermfg=231 gui=bold guibg=#5555ff guifg=#ffffff
    CSAHi PmenuSbar term=NONE cterm=NONE ctermbg=250 ctermfg=fg gui=NONE guibg=#bebebe guifg=fg
    CSAHi PmenuThumb term=NONE cterm=NONE ctermbg=255 ctermfg=231 gui=reverse guibg=#ffffff guifg=fg
    CSAHi TabLine term=underline cterm=underline ctermbg=236 ctermfg=250 gui=underline guibg=#333333 guifg=#bbbbbb
    CSAHi TabLineSel term=bold cterm=bold ctermbg=16 ctermfg=231 gui=bold guibg=#000000 guifg=#ffffff
    CSAHi TabLineFill term=reverse cterm=underline ctermbg=244 ctermfg=250 gui=underline guibg=#808080 guifg=#bbbbbb
    CSAHi CursorColumn term=reverse cterm=NONE ctermbg=236 ctermfg=fg gui=NONE guibg=#333333 guifg=fg
    CSAHi CursorLine term=underline cterm=NONE ctermbg=236 ctermfg=fg gui=NONE guibg=#333333 guifg=fg
    CSAHi rubyString term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi Regexp term=NONE cterm=NONE ctermbg=bg ctermfg=74 gui=NONE guibg=bg guifg=#44b4cc
    CSAHi StatusLine term=reverse,bold cterm=bold ctermbg=147 ctermfg=16 gui=bold guibg=#aabbee guifg=#000000
    CSAHi StatusLineNC term=reverse cterm=NONE ctermbg=248 ctermfg=238 gui=NONE guibg=#aaaaaa guifg=#444444
    CSAHi VertSplit term=reverse cterm=NONE ctermbg=255 ctermfg=16 gui=reverse guibg=bg guifg=fg
    CSAHi Title term=bold cterm=bold ctermbg=bg ctermfg=201 gui=bold guibg=bg guifg=#ff00ff
    CSAHi Visual term=reverse cterm=NONE ctermbg=60 ctermfg=fg gui=NONE guibg=#555577 guifg=fg
    CSAHi VisualNOS term=bold,underline cterm=NONE ctermbg=238 ctermfg=fg gui=NONE guibg=#444444 guifg=fg
    CSAHi WarningMsg term=NONE cterm=NONE ctermbg=bg ctermfg=196 gui=NONE guibg=bg guifg=#ff0000
    CSAHi WildMenu term=NONE cterm=bold ctermbg=226 ctermfg=16 gui=bold guibg=#ffff00 guifg=#000000
    CSAHi Folded term=NONE cterm=NONE ctermbg=18 ctermfg=153 gui=NONE guibg=#110077 guifg=#aaddee
    CSAHi ColorColumn term=reverse cterm=NONE ctermbg=88 ctermfg=fg gui=NONE guibg=#8b0000 guifg=fg
    CSAHi Cursor term=NONE cterm=NONE ctermbg=231 ctermfg=16 gui=NONE guibg=#ffffff guifg=#000000
    CSAHi lCursor term=NONE cterm=NONE ctermbg=255 ctermfg=16 gui=NONE guibg=#eeeeee guifg=#000000
    CSAHi MatchParen term=reverse cterm=NONE ctermbg=19 ctermfg=fg gui=NONE guibg=#1100aa guifg=fg
    CSAHi Comment term=bold cterm=NONE ctermbg=bg ctermfg=98 gui=italic guibg=bg guifg=#9933cc
    CSAHi Constant term=underline cterm=NONE ctermbg=bg ctermfg=66 gui=NONE guibg=bg guifg=#339999
    CSAHi Special term=bold cterm=NONE ctermbg=bg ctermfg=70 gui=NONE guibg=bg guifg=#33aa00
    CSAHi Identifier term=underline cterm=NONE ctermbg=bg ctermfg=220 gui=NONE guibg=bg guifg=#ffcc00
    CSAHi Statement term=bold cterm=NONE ctermbg=bg ctermfg=202 gui=NONE guibg=bg guifg=#ff6600
    CSAHi railsUserClass term=NONE cterm=NONE ctermbg=bg ctermfg=248 gui=italic guibg=bg guifg=#aaaaaa
    CSAHi railsUserMethod term=NONE cterm=NONE ctermbg=bg ctermfg=153 gui=italic guibg=bg guifg=#aaccff
    CSAHi rubyNumber term=NONE cterm=NONE ctermbg=bg ctermfg=191 gui=NONE guibg=bg guifg=#ccff33
    CSAHi DiffAdd term=bold cterm=NONE ctermbg=18 ctermfg=fg gui=NONE guibg=#00008b guifg=fg
    CSAHi DiffChange term=bold cterm=NONE ctermbg=90 ctermfg=fg gui=NONE guibg=#8b008b guifg=fg
    CSAHi DiffDelete term=bold cterm=bold ctermbg=30 ctermfg=21 gui=bold guibg=#008b8b guifg=#0000ff
    CSAHi DiffText term=reverse cterm=bold ctermbg=196 ctermfg=fg gui=bold guibg=#ff0000 guifg=fg
    CSAHi SignColumn term=NONE cterm=NONE ctermbg=250 ctermfg=51 gui=NONE guibg=#bebebe guifg=#00ffff
    CSAHi Conceal term=NONE cterm=NONE ctermbg=248 ctermfg=252 gui=NONE guibg=#a9a9a9 guifg=#d3d3d3
    CSAHi SpellBad term=reverse cterm=undercurl ctermbg=bg ctermfg=196 gui=undercurl guibg=bg guifg=fg guisp=#ff0000
    CSAHi SpellCap term=reverse cterm=undercurl ctermbg=bg ctermfg=21 gui=undercurl guibg=bg guifg=fg guisp=#0000ff
    CSAHi SpellRare term=reverse cterm=undercurl ctermbg=bg ctermfg=201 gui=undercurl guibg=bg guifg=fg guisp=#ff00ff
elseif has("gui_running") || &t_Co == 88
    CSAHi Normal term=NONE cterm=NONE ctermbg=16 ctermfg=87 gui=NONE guibg=#000000 guifg=#eeeeee
    CSAHi rubyMethod term=NONE cterm=NONE ctermbg=bg ctermfg=60 gui=NONE guibg=bg guifg=#dde93d
    CSAHi PreProc term=underline cterm=NONE ctermbg=bg ctermfg=47 gui=NONE guibg=bg guifg=#aaffff
    CSAHi Type term=underline cterm=NONE ctermbg=bg ctermfg=37 gui=NONE guibg=bg guifg=#aaaa77
    CSAHi Underlined term=underline cterm=underline ctermbg=bg ctermfg=39 gui=underline guibg=bg guifg=#80a0ff
    CSAHi Ignore term=NONE cterm=NONE ctermbg=bg ctermfg=16 gui=NONE guibg=bg guifg=#000000
    CSAHi Error term=reverse cterm=NONE ctermbg=64 ctermfg=79 gui=NONE guibg=#ff0000 guifg=#ffffff
    CSAHi Todo term=NONE cterm=NONE ctermbg=76 ctermfg=19 gui=NONE guibg=#ffff00 guifg=#0000ff
    CSAHi String term=NONE cterm=NONE ctermbg=bg ctermfg=44 gui=NONE guibg=bg guifg=#66ff00
    CSAHi SpecialKey term=bold cterm=NONE ctermbg=bg ctermfg=80 gui=NONE guibg=bg guifg=#404040
    CSAHi NonText term=bold cterm=bold ctermbg=bg ctermfg=80 gui=bold guibg=bg guifg=#404040
    CSAHi ErrorMsg term=NONE cterm=NONE ctermbg=64 ctermfg=fg gui=NONE guibg=#ff0000 guifg=fg
    CSAHi IncSearch term=reverse cterm=NONE ctermbg=79 ctermfg=16 gui=reverse guibg=#000000 guifg=#ffffff
    CSAHi Search term=reverse cterm=NONE ctermbg=81 ctermfg=fg gui=NONE guibg=#555555 guifg=fg
    CSAHi MoreMsg term=bold cterm=bold ctermbg=bg ctermfg=20 gui=bold guibg=bg guifg=#00aa00
    CSAHi ModeMsg term=bold cterm=bold ctermbg=bg ctermfg=fg gui=bold guibg=bg guifg=fg
    CSAHi LineNr term=underline cterm=NONE ctermbg=80 ctermfg=63 gui=NONE guibg=#222222 guifg=#ddeeff
    CSAHi ConId term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi VarId term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi hsDelimiter term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi SpellLocal term=underline cterm=undercurl ctermbg=bg ctermfg=31 gui=undercurl guibg=bg guifg=fg guisp=#00ffff
    CSAHi Pmenu term=NONE cterm=bold ctermbg=17 ctermfg=79 gui=bold guibg=#000099 guifg=#ffffff
    CSAHi PmenuSel term=NONE cterm=bold ctermbg=39 ctermfg=79 gui=bold guibg=#5555ff guifg=#ffffff
    CSAHi PmenuSbar term=NONE cterm=NONE ctermbg=85 ctermfg=fg gui=NONE guibg=#bebebe guifg=fg
    CSAHi PmenuThumb term=NONE cterm=NONE ctermbg=87 ctermfg=79 gui=reverse guibg=#ffffff guifg=fg
    CSAHi TabLine term=underline cterm=underline ctermbg=80 ctermfg=85 gui=underline guibg=#333333 guifg=#bbbbbb
    CSAHi TabLineSel term=bold cterm=bold ctermbg=16 ctermfg=79 gui=bold guibg=#000000 guifg=#ffffff
    CSAHi TabLineFill term=reverse cterm=underline ctermbg=83 ctermfg=85 gui=underline guibg=#808080 guifg=#bbbbbb
    CSAHi CursorColumn term=reverse cterm=NONE ctermbg=80 ctermfg=fg gui=NONE guibg=#333333 guifg=fg
    CSAHi CursorLine term=underline cterm=NONE ctermbg=80 ctermfg=fg gui=NONE guibg=#333333 guifg=fg
    CSAHi rubyString term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi Regexp term=NONE cterm=NONE ctermbg=bg ctermfg=26 gui=NONE guibg=bg guifg=#44b4cc
    CSAHi StatusLine term=reverse,bold cterm=bold ctermbg=43 ctermfg=16 gui=bold guibg=#aabbee guifg=#000000
    CSAHi StatusLineNC term=reverse cterm=NONE ctermbg=84 ctermfg=80 gui=NONE guibg=#aaaaaa guifg=#444444
    CSAHi VertSplit term=reverse cterm=NONE ctermbg=87 ctermfg=16 gui=reverse guibg=bg guifg=fg
    CSAHi Title term=bold cterm=bold ctermbg=bg ctermfg=67 gui=bold guibg=bg guifg=#ff00ff
    CSAHi Visual term=reverse cterm=NONE ctermbg=37 ctermfg=fg gui=NONE guibg=#555577 guifg=fg
    CSAHi VisualNOS term=bold,underline cterm=NONE ctermbg=80 ctermfg=fg gui=NONE guibg=#444444 guifg=fg
    CSAHi WarningMsg term=NONE cterm=NONE ctermbg=bg ctermfg=64 gui=NONE guibg=bg guifg=#ff0000
    CSAHi WildMenu term=NONE cterm=bold ctermbg=76 ctermfg=16 gui=bold guibg=#ffff00 guifg=#000000
    CSAHi Folded term=NONE cterm=NONE ctermbg=17 ctermfg=43 gui=NONE guibg=#110077 guifg=#aaddee
    CSAHi ColorColumn term=reverse cterm=NONE ctermbg=32 ctermfg=fg gui=NONE guibg=#8b0000 guifg=fg
    CSAHi Cursor term=NONE cterm=NONE ctermbg=79 ctermfg=16 gui=NONE guibg=#ffffff guifg=#000000
    CSAHi lCursor term=NONE cterm=NONE ctermbg=87 ctermfg=16 gui=NONE guibg=#eeeeee guifg=#000000
    CSAHi MatchParen term=reverse cterm=NONE ctermbg=17 ctermfg=fg gui=NONE guibg=#1100aa guifg=fg
    CSAHi Comment term=bold cterm=NONE ctermbg=bg ctermfg=34 gui=italic guibg=bg guifg=#9933cc
    CSAHi Constant term=underline cterm=NONE ctermbg=bg ctermfg=21 gui=NONE guibg=bg guifg=#339999
    CSAHi Special term=bold cterm=NONE ctermbg=bg ctermfg=20 gui=NONE guibg=bg guifg=#33aa00
    CSAHi Identifier term=underline cterm=NONE ctermbg=bg ctermfg=72 gui=NONE guibg=bg guifg=#ffcc00
    CSAHi Statement term=bold cterm=NONE ctermbg=bg ctermfg=68 gui=NONE guibg=bg guifg=#ff6600
    CSAHi railsUserClass term=NONE cterm=NONE ctermbg=bg ctermfg=84 gui=italic guibg=bg guifg=#aaaaaa
    CSAHi railsUserMethod term=NONE cterm=NONE ctermbg=bg ctermfg=43 gui=italic guibg=bg guifg=#aaccff
    CSAHi rubyNumber term=NONE cterm=NONE ctermbg=bg ctermfg=60 gui=NONE guibg=bg guifg=#ccff33
    CSAHi DiffAdd term=bold cterm=NONE ctermbg=17 ctermfg=fg gui=NONE guibg=#00008b guifg=fg
    CSAHi DiffChange term=bold cterm=NONE ctermbg=33 ctermfg=fg gui=NONE guibg=#8b008b guifg=fg
    CSAHi DiffDelete term=bold cterm=bold ctermbg=21 ctermfg=19 gui=bold guibg=#008b8b guifg=#0000ff
    CSAHi DiffText term=reverse cterm=bold ctermbg=64 ctermfg=fg gui=bold guibg=#ff0000 guifg=fg
    CSAHi SignColumn term=NONE cterm=NONE ctermbg=85 ctermfg=31 gui=NONE guibg=#bebebe guifg=#00ffff
    CSAHi Conceal term=NONE cterm=NONE ctermbg=84 ctermfg=86 gui=NONE guibg=#a9a9a9 guifg=#d3d3d3
    CSAHi SpellBad term=reverse cterm=undercurl ctermbg=bg ctermfg=64 gui=undercurl guibg=bg guifg=fg guisp=#ff0000
    CSAHi SpellCap term=reverse cterm=undercurl ctermbg=bg ctermfg=19 gui=undercurl guibg=bg guifg=fg guisp=#0000ff
    CSAHi SpellRare term=reverse cterm=undercurl ctermbg=bg ctermfg=67 gui=undercurl guibg=bg guifg=fg guisp=#ff00ff
endif

if 1
    delcommand CSAHi
endif
