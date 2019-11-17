lookup
at: aSymbol

	^ self
		at: aSymbol
		ifAbsent: [self error: 'Resource not found']
