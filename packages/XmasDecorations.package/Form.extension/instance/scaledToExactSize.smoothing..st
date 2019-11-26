*XmasDecorations-scaling, rotation
scaledToExactSize: numberOrPoint smoothing: factor

	| scale newExtent |
	newExtent := numberOrPoint asPoint.
	
	newExtent = self extent ifTrue: [^ self copy].
	
	(self height isZero or: [self width isZero])
		ifTrue: [^ self species extent: newExtent depth: self depth].
		
	scale := newExtent / self extent.
	^ self magnify: self boundingBox by: scale smoothing: factor