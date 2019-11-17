stepping
startStepping

	super startStepping.
	self startStepping: #stepAppearanceAt: at: Time millisecondClockValue arguments: nil stepTime: self appearanceStepTime.