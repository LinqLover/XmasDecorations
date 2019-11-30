updating
changed: anAspect

	super changed: anAspect.
	anAspect = #toggleDecorations ifTrue: [
		self
			changed: #toggleDecorationsLabel;
			changed: #areDecorationsActive].
	anAspect = #toggleWatchingCalendar ifTrue: [
		self
			changed: #toggleWatchingCalendarLabel;
			changed: #isWatchingCalendar].