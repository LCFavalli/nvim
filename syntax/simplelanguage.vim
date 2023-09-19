" Vim syntax file
" Language: Gaetano D'Agostino
"
if exists("b:current_syntax")
  finish
endif

syn keyword slKeywords function
syn keyword slOtherKeywords  return
syn keyword slConditionalStatements if else


let b:current_syntax = "sl"

hi def link slKeywords Statement
hi def link slOtherKeywords Keyword
hi def link slConditionalStatements Conditional