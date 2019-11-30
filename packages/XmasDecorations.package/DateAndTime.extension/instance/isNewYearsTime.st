*XmasDecorations-testing
isNewYearsTime

	^ (self month = 12 and: [self dayOfMonth >= 30])
		or: [self month = 1 and: [self dayOfMonth = 1]]