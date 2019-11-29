accessing
backgroundImageSelectors

	^ (self allSelectorsBelow: thisContext receiver superclass)
		select: [:selector |
			self instance isBackgroundSelector: selector]