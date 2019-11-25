*XmasDecorations-copying
nearYearlyDay: aBlockOrValue comparison: aSortBlock shift: aShiftBlock

	| argIsVar dayInThisYear |
	argIsVar := aBlockOrValue respondsTo: #value:.
	argIsVar ifFalse: [
		^ self
			nearYearlyDay: [:year | aBlockOrValue withYear: year]
			comparison: aSortBlock
			shift: aShiftBlock].
	dayInThisYear := aBlockOrValue value: self year.
	(aSortBlock value: dayInThisYear value: self)
		ifTrue: [ ^ dayInThisYear].
	^ aBlockOrValue value: (aShiftBlock value: self year)