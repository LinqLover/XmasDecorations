*XmasDecorations
drawXmasDecorationsOn: aCanvas

	super drawXmasDecorationsOn: aCanvas.
	self xmasDecorations ifNotNil: [:decorations |
		decorations drawWorldDecorationsOn: aCanvas].