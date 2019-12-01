translating
tryTranslate: aString ifFound: aBlock

	aString = 'Search or evaluate...'
		ifTrue: [^ aBlock value: 'Ho-ho-ho!'].