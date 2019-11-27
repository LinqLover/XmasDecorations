*XmasDecorations
darkenIfNeeded: aSymbol

	self isDarkTheme
		ifFalse: [^ aSymbol].
	^ self xmasResources darkenSelector: aSymbol