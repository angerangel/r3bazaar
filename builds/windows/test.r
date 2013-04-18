rebol [
title: "test script"
purpose: "put your test here, and launch t to test it"
]

unset [a b]

print delta-time [ 
a: make block! 10000
loop 20000 [append a "test"]
]

print delta-time [ 
b: make block! 10000
loop 20000 [append b "test"]
]