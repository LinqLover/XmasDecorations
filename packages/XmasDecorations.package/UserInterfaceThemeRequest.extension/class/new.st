*XmasDecorations-override
new

	XmasDecorations isInstalled
		ifFalse: [^ super new].
	self = UserInterfaceThemeRequest
		ifFalse: [^ super new].
	^ XmasUserInterfaceThemeRequest new