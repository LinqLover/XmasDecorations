*XmasDecorations-copying
nextYearlyDay: aBlockOrValue

	^ self
		nearYearlyDay: aBlockOrValue
		comparison: #>=
		shift: #incremented