*XmasDecorations
drawOn: aCanvas

	super drawOn: aCanvas.
	self xmasShouldCoverRoof
		ifFalse: [^ self].
	aCanvas
		drawImage: self xmasRoofForm
		at: self topLeft.