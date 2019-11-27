stepping
stepNewIntensity

	self
		adjustIntensity: (random
			nextBetween: self maximumSnowflakesPerSecond negated
			and: self maximumSnowflakesPerSecond)
		speed: (random
			nextInRange: self intensitySpeedRange ** self intensitySpeedExponent reciprocal)
				** self intensitySpeedExponent.
	self addIntensityAlarm.