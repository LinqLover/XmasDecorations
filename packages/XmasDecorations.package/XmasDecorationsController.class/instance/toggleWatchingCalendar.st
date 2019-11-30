actions
toggleWatchingCalendar

	self isWatchingCalendar
		ifFalse: [self startWatchingCalendar]
		ifTrue: [self stopWatchingCalendar].