" Vim syntax file
if exists("b:current_syntax")
  finish
endif

let b:current_syntax = "sl"

syn keyword slKeywords function
syn keyword slOtherKeywords  return
syn keyword slConditionalStatements if else
syn region slComment start="/\*" end="\*/"
syn match slComment "//.*$"
" String




hi def link slKeywords Statement
hi def link slOtherKeywords Keyword
hi def link slConditionalStatements Conditional
hi def link slComment Comment
