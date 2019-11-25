*XmasDecorations-accessing
startOfLastChristmasTime

	^ self lastYearlyDay: [:year |
		(self withYear: year) firstAdventSunday min: (
			self class year: year month: 12 day: 1)]