*XmasDecorations-accessing
adventSundayNo: aNumber

	^ (self christmasDay - 1 day) lastSunday
		- (4 - aNumber) weeks