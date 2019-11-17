*XmasDecorations-override
new

	self = UserInterfaceThemeRequest
		ifFalse: [^ super new].
	^ XmasUserInterfaceThemeRequest new