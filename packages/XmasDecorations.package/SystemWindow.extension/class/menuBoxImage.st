*XmasDecorations-initializing-override
menuBoxImage

		self xmasResources iconAt: #menuBox ifPresent: [:icon | ^ icon].
		^ self gradientWindow
		ifTrue: [self menuBoxImageGradient]
		ifFalse: [self menuBoxImageFlat].
