rebol [
title: "test script"
purpose: {put your test here, and launch "t" to test it}
]


editor: func [
	"Rebol built-in editor"
	in-text [file! url! string! none!] "Input text, can be also a file or a url"
	/local
	aa  ;area text
	file ;file path
	saved? ;check saving function
	ss ;saving widget
	aa-info ; path display widget
	] [
	
; check if input is none
if none? in-text [file: none in-text: copy "" ]

;check if input is a string or read url!
either  not ( (type? in-text) = string! ) [ 
	file: in-text
	in-text: to-string read file
	] [
	file: none 
	]

;save, check if text is changed before losing it forever
saved?: does [
	if (ss/options/text-body = "*") [
		view [		
		title "Alert! File not saved, do you want save it?"
		hpanel [
			button  green "Save" on-action [ 
				if none? file [ file: request-file/title "Choose file name and destination" ]
				set-face 
				write file aa/names/tb/state/value 
				]
			button red "Cancel"  on-click [unview]
			]
		]
		]
	]
	
;GUI
view [ 	
	hgroup [
		button  "Open" on-action [ 
			saved?
			file: request-file 
			set-face aa (to-string read file )
			set-face aa-info (to-string file)
			]
		button "New" on-action [
			saved?
			file: none
			set-face aa/names/tb/state/value  ""
			]
		;button "Find"
		button "Save" on-action [
			if none? file [ file: request-file/title "Choose file name and destination" ]
			set-face aa-info (to-string file)
			write file aa/names/tb/state/value 
			set-face ss " "
			]
		button"Save-As" on-action [
			file: request-file/title "Choose file name and destination" 
			set-face aa-info (to-string file)
			write file aa/names/tb/state/value 
			set-face ss " "
			]
		button "Help" on-action [ 
			view  [
				vgroup [
					title "Editor Shortcuts:"
					info-area  {
Ctrl-A - select all text
Ctrl-C - copy text
Ctrl-X - cut text / cut all
Ctrl-V - paste text
F5 - to execute (do)
}
					button "Close" on-action [unview]
					]
				]	
			]
		button "Quit" on-click [			
			saved?
			unview
			]
		]
	hgroup [ 
		text "File:"
		aa-info: info (either none? file [""] [to-string file])
		ss: text " "
		]	
	aa: area in-text  on-key [
		do-actor/style face/names/tb 'on-key arg 'text-box  ;This is the normal area behaviour
		;shortcuts:
		if arg/type = 'key [ ;otherwise it happe two times	
			set-face ss "*"
			if arg/key = 'f5 [ 	try load face/names/tb/state/value ]	
			]	
		]	
		button on-action [print saved?]	
	]
	;end of GUI
]	