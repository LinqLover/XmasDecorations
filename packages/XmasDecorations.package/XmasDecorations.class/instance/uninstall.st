installation
uninstall

	Beeper clearDefault.
	self class current: nil.
	
	self refreshUi.
	
	self blizzard ifNotNil: #abandon.