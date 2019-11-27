initialization
initialize

	super initialize.
	self owner: self currentWorld.
	self initializeAppearance.
	counter := 0.