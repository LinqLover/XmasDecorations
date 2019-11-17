stepping
step

	self top > self owner bottom
		ifTrue: [self randomInitialize].
	
	counter := counter + self speed / 5000.
	"self scale: 1 + counter cos abs / 2."
	self floatCenter: self floatCenter +
		((counter cos * self horizontalSign * self speed / 40)
			@ (counter sin / 40 + self speed / 30)).