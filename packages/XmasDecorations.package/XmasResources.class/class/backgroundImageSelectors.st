accessing - selectors
backgroundImageSelectors

	^ self resourceSelectors select: [:selector |
		self isBackgroundSelector: selector]