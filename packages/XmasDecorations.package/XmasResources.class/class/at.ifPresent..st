lookup
at: aSymbol ifPresent: aBlock

	^ self
		at: aSymbol
		ifPresent: aBlock
		ifAbsent: [].