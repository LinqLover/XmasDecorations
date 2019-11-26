*XmasDecorations
xmasRoofForm

	| extent |
	extent := self xmasRoofBounds extent.
	(xmasRoofForm isNil or: [xmasRoofForm extent ~= extent])
		ifTrue: [
			xmasRoofForm := FormXmasRoof scaledToExactSize: extent].
	^ xmasRoofForm