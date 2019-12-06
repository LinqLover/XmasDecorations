installation
undecorate

	Beeper clearDefault.
	self class current: nil.
	
	self wallpaper ifNotNil: #delete.
	self blizzard ifNotNil: #delete.
	
	self refreshUi.