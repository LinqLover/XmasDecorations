accessing - selectors
isBackgroundSelector: aSymbol

	^ aSymbol isUnary and: [
		aSymbol beginsWith: 'backgroundImage']