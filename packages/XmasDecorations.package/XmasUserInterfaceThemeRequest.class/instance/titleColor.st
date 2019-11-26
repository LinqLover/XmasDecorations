lookup
titleColor

	(self target isKindOf: DialogWindow)
		ifFalse: [^ self doesNotUnderstand: (Message selector: #titleColor)].
	
	^ Color transparent