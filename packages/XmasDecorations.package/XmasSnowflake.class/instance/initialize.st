initialization
initialize

	super initialize.
	self owner: ActiveWorld.
	self
		baseExtent: 50 asPoint;
		scale: 1;
		baseColor: Color white opacity: 0.5.
	counter := 0.