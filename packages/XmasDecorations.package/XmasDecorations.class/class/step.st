stepping
step

	| date |
	date := DateAndTime now.
	date asDate = latestDate
		ifTrue: [^ self].
	(self isInstalled xor: date isChristmasTime)
		ifTrue: [
			self isInstalled
				ifFalse: [self install]
				ifTrue: [self uninstall]].
	latestDate := date.