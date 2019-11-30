stepping and presenter
toggleStepping

	self isStepping
		ifFalse: [self startStepping]
		ifTrue: [self stopStepping].