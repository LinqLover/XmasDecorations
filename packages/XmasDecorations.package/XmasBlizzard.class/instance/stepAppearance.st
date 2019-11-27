stepping
stepAppearance

	self submorphsDo: #stepAppearance.
	intensityCounter step.
	random next < (self snowflakesPerSecond / self appearanceStepTime)
		ifTrue: [self addSnowflake].