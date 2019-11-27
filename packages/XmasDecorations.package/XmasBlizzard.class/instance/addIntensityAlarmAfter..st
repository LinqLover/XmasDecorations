initialize-release
addIntensityAlarmAfter: aDuration

	Transcript showln: 'Next intensity step after ' , aDuration.
	self
		addAlarm: #stepNewIntensity
		after: aDuration asMilliSeconds.