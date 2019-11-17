lookup
at: aSymbol ifPresent: aBlock ifAbsent: anotherBlock

	^ self cache
		at: aSymbol
		ifPresent: aBlock
		ifAbsentPut: [
			(self instance respondsTo: aSymbol)
				ifTrue: [self instance perform: aSymbol]
				ifFalse: [^ anotherBlock value]]
