*XmasDecorations-copying
withYear: aYear

	^ self class
		year: aYear
		month: self month
		day: self dayOfMonth
		hour: self hour
		minute: self minute
		second: self second
		nanoSecond: self nanoSecond
		offset: self offset