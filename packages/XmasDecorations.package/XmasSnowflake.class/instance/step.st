stepping
step

	(self top > self owner bottom or: [
		self horizontalSign positive
			ifTrue: [self left > self owner right]
			ifFalse: [self right < self owner left]])
		ifTrue: [^ self abandon].
	
	counter := counter + (self speed / 5000).
	self isHighPerformance ifTrue: [
		self scale: 0.9 + (counter cos / 8)].
	self floatCenter: self floatCenter +
		((counter cos * self horizontalSign * self speed / 40)
			@ (counter sin / 40 + (self speed / 30))).