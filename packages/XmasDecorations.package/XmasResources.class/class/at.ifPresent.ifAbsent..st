lookup
at: aSymbol ifPresent: aBlock ifAbsent: anotherBlock

	| element |
	element := self cache
		at: aSymbol
		ifAbsentPut: [
			(self instance respondsTo: aSymbol)
				ifTrue: [self instance perform: aSymbol]
				ifFalse: [^ anotherBlock value]].
	^ aBlock value: element