lookup
menuIconAt: aSymbol ifPresent: aBlock

	^ self
		at: ('menuIcon' , aSymbol capitalized) asSymbol
		ifPresent: aBlock