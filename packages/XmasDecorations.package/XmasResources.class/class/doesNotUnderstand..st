lookup
doesNotUnderstand: aMessage

	aMessage numArgs = 0
		ifFalse: [	^ super doesNotUnderstand: aMessage].
	^ self cache
		at: aMessage selector
		ifAbsentPut: [
			aMessage lookupClass: nil; sentTo: self instance].
