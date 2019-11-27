lookup
removeFromCache: aSymbol

	cache
		removeKey: aSymbol ifAbsent: [];
		removeKey: (self darkenSelector: aSymbol) ifAbsent: []