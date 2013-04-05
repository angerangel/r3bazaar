Rebol [ title: "image file updater"]


text: to-string reduce [ {REBOL [
	Purpose: {This file contains rebol embedded images, 
	it is NOT automatically updated. 
	To update this file, change or add images in this folder
	and launch update.r}
	title: "Embedded Rebol images"
	date: }  now	{^/
	version:  2.0.0  ;it doesn't has much sense since the correct verion number is on GitHub site
	license: "Apache License, Version 2.0, January 2004, http://www.apache.org/licenses/"
	]} ]

;built-in images
}

file-list: read %.

foreach file file-list [
	;test if file is an image
	if (type? load file) = image! [
		;extract image name form file name
		suff: suffix? file
		name: to-string file
		reverse name
		loop length? suff [
			remove name
			]
		reverse name	
		;appendtext image
		append text newline
		append text name
		append text ": "
		append text to-string load file
		]		
	]

write %images.r text
