installation
undecorate

	Beeper clearDefault.
	self class current: nil.
	
	self backgroundMorph ifNotNil: #abandon.
	self blizzard ifNotNil: #abandon.
	
	self refreshUi.