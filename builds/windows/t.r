rebol []


 view [
  a: box 200x200 
  button on-action [to-draw [pen white line 0x0 100x100] a/gob/draw
   show a
   ]
]
