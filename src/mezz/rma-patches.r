REBOL [
	Title: "REBOL Graphics - load-gui patch"
]

;there are too many load-gui in source files, let's remove them

;encode patch replacing internal PNG encoder crash

encode: funct [
	{Encodes a datatype (e.g. image!) into a series of bytes.}
	type [word!] {Media type (jpeg, png, etc.)}
	data [image! binary! string!] {The data to encode}
	/options opts [block!] {Special encoding options}
][
	unless all [
		cod: select system/codecs type
		data: switch/default cod/name [
			png [
				to-png data
			]
		][
			do-codec cod/entry 'encode data
		]
	][
		cause-error 'access 'no-codec type
	]
	data
]

;enable console on next print,probe etc.
console-output true
