installation
decorate

	Beeper setDefault: self xmasResources soundHohoho.
	self class current: self.
	
	self refreshUi.
	
	backgroundMorph := (XmasBackgroundMorph withImports:
		self xmasResources backgroundImageImports) install.
	self blizzard: (XmasBlizzard newFor: self currentWorld).
	self blizzard setUp; start.