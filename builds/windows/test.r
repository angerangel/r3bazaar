rebol [
title "test script"
purpose: "put your test here, and launch t to test it"
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
