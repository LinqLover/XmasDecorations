stepping
stepAppearance

	self submorphsDo: #stepAppearance.
	intensityCounter step.
	self snowflakesPerSecond timesRepeat: [
		random next < self appearanceStepTime reciprocal
			ifTrue: [self addSnowflake]].
	isFireworks := DateAndTime now isNewYearsTime.