accessing - selectors
isDarkSelector: aSymbol

	^ aSymbol isUnary and: [
		aSymbol beginsWith: 'dark']