transformations
darkenForm: aForm

	(aForm isKindOf: InfiniteForm)
		ifTrue: [^ InfiniteForm with: (self darkenForm: aForm form)].
	^ aForm collectColors: #negated