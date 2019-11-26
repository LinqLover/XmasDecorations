*XmasDecorations-windows
xmasDrawRoofOn: aCanvas

	self xmasShouldCoverRoof
		ifFalse: [^ self].
	aCanvas
		drawImage: self xmasRoofForm
		at: self topLeft.