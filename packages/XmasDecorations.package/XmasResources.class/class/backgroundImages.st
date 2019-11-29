accessing
backgroundImages

	^ (self allSelectorsBelow: thisContext receiver superclass)
		select: [:selector | self instance isBackgroundSelector: selector]
		thenCollect: [:selector | self perform: selector]