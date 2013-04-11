REBOL [Title: "Basic TEXT test"]

load-gui

win-size: 420x600
;;; WINDOW
win: make gob! reduce/no-set [offset: 200x20 size: win-size]
img: load %dev-small.jpg
;;; background GOB
gobb: make gob! []
gobb/size: win/size
gobb/color: white
append win gobb

append gobb make gob! reduce/no-set [color: sky size: win-size]

gobt: make gob! reduce/no-set [size: win-size]

fnt: make system/standard/font [
	name: "Arial"
	size: 28
]
fnt-uni: make system/standard/font [
	name: "Arial Unicode MS"
	size: 28
]

;note: should every PARA command reset internal values so next TEXT call can be used as a new paragraph?
par: make system/standard/para [
	origin: 0x0	;works
	margin: 0x0 ;Y coord doesn't do anything (should clip text?)
	indent: 0x0	;X cord doesn't work when align=right/center
	tabs: 40		;works
	wrap?: true		;works
	scroll: 0x0		;works
	align: 'left	;works - problem with indent/x in right/center mode
	valign: 'middle ;works
]

caret-obj: make object! [
	caret: 
	highlight-start:
	highlight-end: none
]

gobt/text: to-text [
	anti-alias
	size 30
	navy
	"Hello world!"
	newline
	"This is text test 1."
	newline
	"This is another text line test 2."
	caret caret-obj
] copy []

caret-obj/caret: reduce [at gobt/text 8 at first at gobt/text 8 5 ]

append gobb gobt

view win
