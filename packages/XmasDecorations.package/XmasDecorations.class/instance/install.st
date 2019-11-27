installation
install

	Beeper setDefault: self xmasResources soundHohoho.
	self class current: self.
	
	self refreshUi.
	
	self blizzard: (XmasBlizzard newFor: self currentWorld).
	self blizzard
		setUp;
		start.