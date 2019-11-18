as yet unclassified
darken: aForm

	(aForm isKindOf: InfiniteForm)
		ifTrue: [^ InfiniteForm with: (self darken: aForm form)].
	^ aForm collectColors: #negated