rebol [
title "test script"
purpose: "put your test here, and launch t to test it"
]


view [
    title "Opinion Survey"
    text "Do you want programs to be easy to build?"
    vpanel  [
        text  "Answer:"
        hpanel [
		radio "Agree"
		radio "Disagree"
		radio "Not sure"
		]
        
        check "I'm a programmer."
        
        check "I am also a REBOL expert."
        text  "Name:"
        field
        text   "Comment:"
        area
        
    ]
    hpanel [
        a: button "Submit"  green 
        button "Reset"  on-action  [?  a/options  ]
        button "Cancel" 
    ]
]