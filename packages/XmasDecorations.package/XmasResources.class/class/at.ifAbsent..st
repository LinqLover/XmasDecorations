lookup
at: aSymbol ifAbsent: aBlock

	^ self
		at: aSymbol
		ifPresent: #yourself
		ifAbsent: aBlock
