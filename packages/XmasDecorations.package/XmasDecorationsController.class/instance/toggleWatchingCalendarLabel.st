strings
toggleWatchingCalendarLabel

	^ self isWatchingCalendar
		ifTrue: ['Watching calendar']
		ifFalse: ['Not watching calendar']