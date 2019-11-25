lookup
scriptIconAt: aString ifPresent: aBlock

	^ self
		at: ('scriptIcon' , (aString copyWithoutAll: '-') capitalized) asSymbol
		ifPresent: aBlock