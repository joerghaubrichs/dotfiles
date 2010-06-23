syn keyword dslClassifier end package model view process 
syn keyword dslPart data form layout 

syn keyword dslDirections import

syn keyword dslTodo contained TODO FIXME XXX NOTE

syn match   dslComment "#.*$" contains=dslTodo
syn match   dslIdentifier '[:alpha:]+' display

syn region  dslBlock        start=":"   end="end" fold transparent
syn region  dslString       start='"'   end='"'
syn region  dslTemplate     start='<<'  end='>>'
syn region  dslLongComment  start="/\*"  end="\*/" contains=dslTodo

hi def link dslClassifier           Keyword
hi def link dslPart                 Type
hi def link dslString               String 
hi def link dslComment              Comment
hi def link dslTodo                 Todo
hi def link dslLongComment          Comment
hi def link dslIdentifier           Type
hi def link dslTemplate             Type
hi def link dslDirections           PreProc

""Comment Statement Type Constant PreProc Todo

let b:current_syntax = "webdsl"
