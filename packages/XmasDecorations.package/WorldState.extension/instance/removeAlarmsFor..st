*XmasDecorations-alarms
removeAlarmsFor: aTarget 
	self lockAlarmsDuring: [:locked |
		locked removeAlarmsWithReceiver: aTarget ]