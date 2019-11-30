stepping
step

	| isChristmasTime |
	isChristmasTime := DateAndTime now isChristmasTime.
	isChristmasTime = latestIsChristmasTime
		ifTrue: [^ self].
	(self isActive xor: isChristmasTime)
		ifTrue: [
			self isActive
				ifFalse: [self decorate]
				ifTrue: [self undecorate]].
	latestIsChristmasTime := isChristmasTime.