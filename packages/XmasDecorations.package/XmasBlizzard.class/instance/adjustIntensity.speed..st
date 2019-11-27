stepping
adjustIntensity: snowflakesPerSecond speed: speed

	Transcript showln: ('adjustIntensity: {1} speed: {2}'
		format: {snowflakesPerSecond. speed}).
	intensityCounter
		target: snowflakesPerSecond;
		speed: speed.