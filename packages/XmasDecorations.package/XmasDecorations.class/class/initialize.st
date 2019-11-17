accessing
initialize

	super initialize.
	
	self current ifNil: [self current: self new].