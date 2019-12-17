*XmasDecorations-initializing-override
expandBoxImage

	self xmasResources iconAt: #expandBox ifPresent: [:icon | ^ icon].
	^ self gradientWindow
		ifTrue: [self expandBoxImageGradient]
		ifFalse: [self expandBoxImageFlat].
