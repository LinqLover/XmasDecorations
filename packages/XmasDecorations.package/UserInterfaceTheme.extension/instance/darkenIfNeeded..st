*XmasDecorations
darkenIfNeeded: aSymbol

	self isDarkTheme
		ifFalse: [^ aSymbol].
	^ ('dark' , aSymbol capitalized) asSymbol