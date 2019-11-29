transformations
isBackgroundSelector: aSymbol

	^ aSymbol isUnary and: [
		aSymbol beginsWith: 'backgroundImage']