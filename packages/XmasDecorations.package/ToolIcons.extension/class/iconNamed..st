*XmasDecorations-override
iconNamed: aSymbol

	self xmasResources
		at: ('icon' , aSymbol capitalized) asSymbol
		ifPresent: [:form | ^ form copy].
	^ self icons at: aSymbol ifAbsentPut: [self perform: aSymbol]