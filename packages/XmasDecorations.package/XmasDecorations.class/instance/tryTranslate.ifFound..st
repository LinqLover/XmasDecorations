translating
tryTranslate: aString ifFound: aBlock

	"Installation with Locale localeChanged"
	aString = 'Search or evaluate...'
		ifTrue: [^ aBlock value: 'Ho-ho-ho!'].