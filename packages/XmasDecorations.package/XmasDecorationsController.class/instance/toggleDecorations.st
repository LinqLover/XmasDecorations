actions
toggleDecorations

	self areDecorationsActive
		ifFalse: [self turnOnDecorations]
		ifTrue: [self turnOffDecorations].