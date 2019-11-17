lookup
color

	(self target respondsTo: #xmasFillStyle)
		ifFalse: [^ self doesNotUnderstand: (Message selector: #color)].
	
	^ self target xmasFillStyle