initialize-release
addIntensityAlarmAfter: aDuration

	dbg_nextIntensityAlarmTime := DateAndTime now + aDuration.
	self
		addAlarm: #stepNewIntensity
		after: aDuration asMilliSeconds.