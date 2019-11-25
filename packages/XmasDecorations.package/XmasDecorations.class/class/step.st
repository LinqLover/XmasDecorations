stepping
step

	| isChristmasTime |
	isChristmasTime := DateAndTime now isChristmasTime.
	isChristmasTime = latestIsChristmasTime
		ifTrue: [^ self].
	(self isInstalled xor: isChristmasTime)
		ifTrue: [
			self isInstalled
				ifFalse: [self install]
				ifTrue: [self uninstall]].
	latestIsChristmasTime := isChristmasTime.