initialize-release
addIntensityAlarmAfter: aDuration

	dbg_nextInsensityAlarmTime := DateAndTime now + aDuration.
	Transcript showln: 'Next intensity step at ' , dbg_nextInsensityAlarmTime.
	self
		addAlarm: #stepNewIntensity
		after: aDuration asMilliSeconds.