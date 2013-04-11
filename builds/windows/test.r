rebol [
title: "test script"
purpose: "put your test here, and launch t to test it"
]




view [
	button "Close" on-action [close-window face]
	a: button red
	b: button on-action [
		a/gob: layout/gob [button "hello" green]
		show a/gob
		]
	
	]


comment [

view [
	hpanel [
		button "Open" 80 on-action [ ? main-a]
		button  "New" 80 on-action [new-file]
		button "Find" 80 on-action [find-text]
		button "Save" 80 on-action [save-file]
		button "Save-As" 80 on-action [save-as]
		button "Help" 80 on-action [
			alert {This is a tiny editor}
			]
		button "Quit" 80 on-action [close-window face]
		]
	main-a: area	
	]
]


comment [
view  [	
	tab-box  [
		"Test1" [
			text "first panel"		
		]]
		
]



my-data: [
        ["John" "Doe" NY 45]
        ["Erica" "Stone" CA 19 none "note 1"]
        ["James" "Cole" FL 5 "note 2"]
]

view [
	title "R3GUI demonstration"
	text-table 200x200  ["First name" #1 250 "Surname" #2 300 "Age" #4 50 number] my-data
]	
]