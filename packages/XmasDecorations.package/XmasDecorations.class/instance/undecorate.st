installation
undecorate

	Beeper clearDefault.
	self class current: nil.
	backgroundMorph abandon.
	
	self refreshUi.
	
	self blizzard ifNotNil: #abandon.