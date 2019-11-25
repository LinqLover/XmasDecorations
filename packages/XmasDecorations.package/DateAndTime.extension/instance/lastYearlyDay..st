*XmasDecorations-copying
lastYearlyDay: aBlockOrValue

	^ self
		nearYearlyDay: aBlockOrValue
		comparison: #<=
		shift: #decremented