testing
isDarkSelector: aSymbol

	^ aSymbol isUnary and: [
		aSymbol beginsWith: 'dark']