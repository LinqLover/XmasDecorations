*XmasDecorations-windows
xmasRoofForm

	| extent xmasRoofForm |
	extent := self xmasRoofBounds extent.
	xmasRoofForm := self valueOfProperty: #xmasRoofForm.
	(xmasRoofForm isNil or: [xmasRoofForm extent ~= extent])
		ifTrue: [
			xmasRoofForm := FormXmasRoof scaledToExactSize: extent.
			self setProperty: #xmasRoofForm toValue: xmasRoofForm].
	^ xmasRoofForm