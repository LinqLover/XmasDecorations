*XmasDecorations-accessing-override
iconNamed: aSymbol

	self xmasResources
		iconAt: aSymbol
		ifPresent: [:form | ^ form copy].
	^ self icons at: aSymbol ifAbsentPut: [self perform: aSymbol]