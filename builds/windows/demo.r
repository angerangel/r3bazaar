Rebol [title "VID demo"]
load-gui
;if  request/ask "VID DEMO" "Do you want VID demo starting?" [ 

;alert "VID demo starting!"

view  [
	hpanel [	
		vpanel [
			title "R3GUI demonstration"
			button "button" on-action [alert "button pressed"]			
			toggle  "toggle"
			check
			radio
			radio
			text "arrow-button:"
			hpanel [
				arrow-button 
				arrow-button  45
				arrow-button  90
				arrow-button  135
				arrow-button  180
				]
			text "drop-down:"	
			drop-down	["first" "second" "3" "and so on..."]
			hpanel [
				drop-arrow ["first" "second" "3" "and so on..."]
				text "<- drop-arrow"
				]
			text "box:"
			box
			text "bar:"
			bar
			]
		div
		vpanel [
			text "<- div "
			text "progress:"
			pp: progress  10%
			text  "slider:"
			ss: slider 10% attach 'pp
			head-bar "head-bar text"
			label "Label text"
			text-area "Text-area, you may write here"
			text-box "Text-box, you may write here"
			field "Field, , you may write here"
			info "Info"
			
			]
		div
		vpanel  [			
			code "code style" 400x50
			area "area, you may write here" 400x50
			code-area "code-area, , you may write here" 400x50
			info-area "info-area" 400x50
			text "color-picker:"
			color-picker
			]		
		]
]


; ]
