lookup
at: aSymbol ifPresent: aBlock ifAbsent: anotherBlock

	| element |
	element := self cache
		at: aSymbol
		ifAbsentPut: [ true
			caseOf: {
				[self canUnderstand: aSymbol] ->
					[self instance perform: aSymbol].
				[self isDarkSelector: aSymbol] ->
					[self
						at: (self undarkenSelector: aSymbol)
						ifPresent: [:form | self darkenForm: form]
						ifAbsent: anotherBlock] }
			otherwise: [^ anotherBlock value] ].
	^ aBlock value: element