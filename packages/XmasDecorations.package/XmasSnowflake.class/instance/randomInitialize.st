initialization
randomInitialize

	self randomReset.
	
	self floatCenter: self floatCenter x
		@ ((RandomGenerator
			nextBetween: self owner top
			and: self owner bottom)
				- self owner height  - self placementOffset y).