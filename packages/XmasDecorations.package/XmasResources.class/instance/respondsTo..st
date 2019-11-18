as yet unclassified
respondsTo: aSymbol

	^ (super respondsTo: aSymbol)
		or: [self isDarkSelector: aSymbol]