if exists("b:current_syntax")
  finish
endif

let s:cpo_save = &cpo
set cpo&vim

let s:nak_syntax_keywords = {
  \   'nakConditional' :["if"
  \ ,                    "else"
  \ ,                   ]
  \ , 'nakRepeat' :["until"
  \ ,              ]
  \ , 'nakExecution' :["ret"
  \ ,                 ]
  \ , 'nakBoolean' :["true"
  \ ,                "false"
  \ ,               ]
  \ , 'nakKeyword' :["func"
  \ ,               ]
  \ , 'nakWordOperator' :["and"
  \ ,                     "or"
  \ ,                    ]
  \ , 'nakVarDecl' :["let"
  \ ,               ]
  \ , 'nakType' :["int"
  \ ,             "float"
  \ ,             "bool"
  \ ,             "string"
  \ ,             "any"
  \ ,            ]
  \ , 'nakConstant' :["this"
  \ ,                 "super"
  \ ,                 "null"
  \ ,                 "constructor"
  \ ,                ]
  \ , 'nakStructure' :["class"
  \ ,                 ]
  \ , }

function! s:syntax_keyword(dict)
  for key in keys(a:dict)
    execute 'syntax keyword' key join(a:dict[key], ' ')
  endfor
endfunction

call s:syntax_keyword(s:nak_syntax_keywords)

syntax match nakDecNumber display "\v<\d%(_?\d)*"

syntax match nakOperator display "\V\[-+/*=^!><%~:;,]"

syntax match nakFunction /\w\+\s*(/me=e-1,he=e-1

syntax region nakBlock start="{" end="}" transparent fold

syntax region nakCommentLine start="//" end="$"

syntax region nakString matchgroup=nakStringDelimiter start=+"+ skip=+\\\\\|\\"+ end=+"+ oneline contains=nakEscape
syntax match nakEscape  display contained /\\./

highlight default link nakDecNumber nakNumber

highlight default link nakKeyword Keyword
highlight default link nakType Type
highlight default link nakCommentLine Comment
highlight default link nakComment Comment
highlight default link nakString String
highlight default link nakStringDelimiter String
highlight default link nakBoolean Boolean
highlight default link nakConstant Constant
highlight default link nakFunction Function
highlight default link nakNumber Number
highlight default link nakOperator Operator
highlight default link nakStructure Structure
highlight default link nakConditional Conditional
highlight default link nakRepeat Repeat
highlight default link nakVarDecl Define

let b:current_syntax = "nak"

let &cpo = s:cpo_save
unlet! s:cpo_save
