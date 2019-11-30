strings
toggleDecorationsLabel

	^ self areDecorationsActive
		ifFalse: ['Turn on decorations']
		ifTrue: ['Turn off decorations']