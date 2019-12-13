*XmasDecorations-windows
xmasShouldCoverRoof

	^ self xmasDecorations roofsActivated
		and: [self xmasResources includesKey: #formRoof]
		and: [self respondsTo: #xmasRoofBounds]