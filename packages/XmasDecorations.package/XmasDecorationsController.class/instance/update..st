updating
update: anAspect

	anAspect = #stepping ifTrue: [
		self changed: #toggleWatchingCalendar].
	anAspect = #decoration ifTrue: [
		self changed: #toggleDecorations].
	^ super update: anAspect