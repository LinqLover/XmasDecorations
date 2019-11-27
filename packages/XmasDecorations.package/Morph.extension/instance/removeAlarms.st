*XmasDecorations-events-alarms
removeAlarms
	| scheduler |
	scheduler := self alarmScheduler.
	scheduler ifNotNil:[scheduler removeAlarmsFor: self].