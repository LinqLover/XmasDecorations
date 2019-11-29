initialize-release
addIntensityAlarmAfter: aDuration

	dbg_nextInsensityAlarmTime := DateAndTime now + aDuration.
	self
		addAlarm: #stepNewIntensity
		after: aDuration asMilliSeconds.