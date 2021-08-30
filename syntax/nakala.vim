syntax case ignore
syntax case match

" match keywords
syntax keyword nakKeywords
  \ fn 
  \ call
  \ let
  \ and
  \ or
  \ not 
  \ if
  \ else 
  \ ret 
  \ class
  \ new
  \ fields
  \ for
  \ in

" match booleans
syntax keyword nakBoolean 
  \ true
  \ false

" match comments
syntax match nakComment "\v#.*$" fold

" match operators
syntax match nakOperator "\v\+"
syntax match nakOperator "\v\-"
syntax match nakOperator "\v\*"
syntax match nakOperator "\v\/"
syntax match nakOperator "\v\<"
syntax match nakOperator "\v\>"
syntax match nakOperator "\v\="

" idents 
 syntax match nakIdentifier "\v[A-Za-z][A-Za-z0-9_]"

" functions
syntax match nakFunction "\w\(\w\)*("he=e-1,me=e-1 

" match numbers
syntax match nakNumber "\v<\d+>"

" match strings
syntax region nakString start=/"/ skip=/\\"/ end=/"/ oneline

" set highlights


highlight default link nakString String
highlight default link nakNumber Number
highlight default link nakBoolean Boolean

highlight default link nakOperator Operator
highlight default link nakKeywords Keyword
highlight default link nakFunction Function

highlight default link nakComment Comment


syn sync minlines=200
syn sync maxlines=500

let b:current_syntax="nakala"
