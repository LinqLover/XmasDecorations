*XmasDecorations-override
closeBoxImage

	self xmasResources iconAt: #closeBox ifPresent: [:icon | ^ icon].
	^ self gradientWindow
		ifTrue: [self closeBoxImageGradient]
		ifFalse: [self closeBoxImageFlat].
