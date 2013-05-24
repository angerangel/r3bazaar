rebol [
title: "editor"
purpose: {Built in editor}
author: "Massimliano Vessi"
version: 2.4
date: 3-May-2013
]


editor: funct [
	"Rebol built-in editor"
	in-text [file! url! string! none!] "Input text, can be also a file or a url"	
	] [
;aa  ;area text
;file ;file path
;ss ;saving widget
;aa-info ; path display widget


; check if input is none
if none? in-text [
	file: none 
	in-text: copy "" 
	]

;check if input is a string or read url!
either  not ( (type? in-text) = string! ) [ 
	file: in-text
	in-text: to-string read file
	] [
	file: none 
	]

	
;GUI

view/options [ 	
	hgroup [
		oo: button  "Open" on-action [ 
			if ((get-face ss) = "*") [
				view/modal [		
					title "Alert! File not saved, do you want save it?"
					hpanel [
						button  green "Save" on-action [ 
							if ((get-face aa-info) = " " ) [ 
								file: request-file/title "Choose file name and destination" 
								if none? file [file: %backup.r ]
								set-face aa-info (to-string file)
								]
							write (to-file AA-INFO/OPTIONS/text-edit)  (get-face aa)
							]
						button red "Cancel"  on-click [unview]
						]
					]
				]			
			file: request-file 
			if none? file [file: %backup.r ]
			set-face aa (to-string read file )
			set-face aa-info (to-string file)
			]
		nn: button "New" on-action [
			if ((get-face ss) = "*") [
				view/modal [		
					title "Alert! File not saved, do you want save it?"
					hpanel [
						button  green "Save" on-action [ 
							if ((get-face aa-info) = " " ) [ 
								file: request-file/title "Choose file name and destination" 
								if none? file [file: %backup.r ]
								set-face aa-info (to-string file)
								]
							write (to-file AA-INFO/OPTIONS/text-edit)  (get-face aa)
							]
						button red "Cancel"  on-click [unview]
						]
					]
				]
			file: request-file/title "New file name?" 
			if none? file [file: %backup.r ]
			set-face aa-info (to-string file)
			set-face aa  ""
			]
		;button "Find"
		sss: button "Save" on-action [		
			if ((get-face aa-info) = " " )  [ 
				file: request-file/title "Choose file name and destination" 
				if none? file [file: %backup.r ]
				set-face aa-info (to-string file) 
				]
			write (to-file AA-INFO/OPTIONS/text-edit)  (get-face aa)
			set-face ss " "
			]
		ssss: button"Save-As" on-action [
			file: request-file/title "Choose file name and destination" 
			if none? file [file: %backup.r ]
			set-face aa-info (to-string file)
			write (to-file AA-INFO/OPTIONS/text-edit) (get-face aa)
			set-face ss " "
			]
		button "Help" on-action [ 
			view  [
				vgroup [
					title "Editor Shortcuts:"
					info-area  {
F5 - to execute (do)					
Ctrl-A - select all text
Ctrl-C - copy text
Crtl-N - Create a new file
Crtl-O - Open a new file
Ctrl-Q - quit
Ctrl-S - save text
Ctrl-Shift-S - save text as a new file
Ctrl-X - cut text / cut all
Ctrl-V - paste text
}
					button "Close" on-action [unview]
					]
				]	
			]
		qq: button "Quit" on-action [			
			if ((get-face ss) = "*") [
				view/modal  [		
					title "Alert! File not saved, do you want save it?"
					hpanel [
						button  green "Save" on-action [ 
							if ((get-face aa-info) = " " )  [ 
								file: request-file/title "Choose file name and destination" 
								if none? file [file: %backup.r ]
								set-face aa-info (to-string file) 
								]
							write (to-file AA-INFO/OPTIONS/text-edit) (get-face aa)
							]
						button red "Cancel"  on-click [unview]
						]
					]
				]
			unview/all
			]
		]
	hgroup [ 
		text "File:"
		aa-info: info (either none? file [""] [to-string file])
		ss: text " "
		]	
	aa: area in-text  on-key [
		do-actor/style face  'on-key arg 'area  ;This is the normal area behaviour		
		if arg/type = 'key [ ;otherwise it happe two times	
			set-face ss "*"
			;if arg/key = 'f5 [ 	try load face/names/tb/state/value ]	
			]	
		]			
	] [ ;options, shortcuts:
		shortcut-keys: [
			#"^N" [  nn/actors/on-action nn none ]	
			#"^O" [  oo/actors/on-action oo none ]
			#"^S" [ either (find arg/flags 'shift) [ssss/actors/on-action ssss none] [ sss/actors/on-action sss none] ]
			#"^Q" [  qq/actors/on-action qq none ]	
			f5 [  
				write %test.r  (get-face aa)
				call  {./r3-view --do "load-gui" test.r }  
				]
			]
		]
	;end of GUI
]	