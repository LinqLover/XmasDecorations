lookup
includesKey: aSymbol

	^ self
		at: aSymbol
		ifPresent: [:it | true]
		ifAbsent: [false]