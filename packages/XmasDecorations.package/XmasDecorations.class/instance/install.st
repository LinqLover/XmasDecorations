installation
install

	Beeper setDefault: self xmasResources soundHohoho.
	self class current: self.
	
	self refreshUi.
	
	backgroundMorph := (XmasBackgroundMorph withImages:
		self xmasResources backgroundImages) install.
	self blizzard: (XmasBlizzard newFor: self currentWorld).
	self blizzard
		setUp;
		start.