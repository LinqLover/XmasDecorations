stepping
startStepping

	self currentWorld
		startStepping: self
		at: Time millisecondClockValue
		selector: #step
		arguments: nil
		stepTime: 12 minutes asMilliSeconds.
	self changed: #stepping.