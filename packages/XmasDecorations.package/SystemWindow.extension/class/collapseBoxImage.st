*XmasDecorations-override
collapseBoxImage

		self xmasResources iconAt: #collapseBox ifPresent: [:icon | ^ icon].
		^ self gradientWindow
		ifTrue: [self collapseBoxImageGradient]
		ifFalse: [self collapseBoxImageFlat].
