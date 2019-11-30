lookup
doesNotUnderstand: aMessage

	aMessage selector isUnary
		ifFalse: [^ super doesNotUnderstand: aMessage].
	^ self at: aMessage selector