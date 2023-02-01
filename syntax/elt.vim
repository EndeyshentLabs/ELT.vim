if exists("b:current_syntax")
  finish
endif

syn keyword eltTodo contained TODO XXX NOTE FIXME
syn keyword eltKeywords decl
syn match eltInteger "\<-\=\d\+\>" display
" Forth inetegers
" syn match eltInteger '\<-\=[0-9]\+\=\>' display
" syn match eltInteger '\<-\=[0-9]\+.\=\>' display
" syn match eltInteger '\<&-\=[0-9]\+.\=\>' display
syn region eltComment start='\~' end='.*$' contains=eltTodo display

syn match eltFloat '\<-\=\d*[.]\=\d\+\d\+\>' display
" syn match eltFloat '\<-\=\d*[.]\=\d\+[-+]\d\+\>' display

hi def link eltInteger Number
hi def link eltFloat Float
hi def link eltTodo Todo
hi def link eltComment Comment
hi def link eltKeywords Identifier

let b:current_syntax = "elt"
