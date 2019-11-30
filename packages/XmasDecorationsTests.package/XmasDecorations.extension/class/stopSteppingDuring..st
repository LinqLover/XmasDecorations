*XmasDecorationsTests-stepping
stopSteppingDuring: aBlock

	self isStepping ifFalse: [^ aBlock value].
	self stopStepping.
	^ aBlock ensure: [
		self startStepping]