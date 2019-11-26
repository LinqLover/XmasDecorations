*XmasDecorations-windows
xmasShouldCoverRoof

	^ (self xmasResources includesKey: #formRoof)
		and: [self respondsTo: #xmasRoofBounds]