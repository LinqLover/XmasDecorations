lookup
iconAt: aSymbol ifPresent: aBlock

	^ self
		at: ('icon' , aSymbol capitalized) asSymbol
		ifPresent: aBlock