*XmasDecorations-override
new

	self xmasDecorations isActiveDecorations
		ifFalse: [^ super new].
	self = UserInterfaceThemeRequest
		ifFalse: [^ super new].
	^ XmasUserInterfaceThemeRequest new