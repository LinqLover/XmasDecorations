lookup
doesNotUnderstand: aMessage

	aMessage numArgs = 0
		ifFalse: [	^ super doesNotUnderstand: aMessage].
	^ self at: aMessage selector