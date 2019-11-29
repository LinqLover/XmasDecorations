*XmasDecorations-scaling, rotation
scaledToMinSize: numberOrPoint smoothing: factor

	| scale newExtent |
	newExtent := numberOrPoint asPoint.
	
	newExtent = self extent ifTrue: [^ self copy].
	
	(self height isZero or: [self width isZero])
		ifTrue: [^ self species extent: newExtent depth: self depth].
		
	scale := newExtent x / self width max: newExtent y / self height.
	^ self magnify: self boundingBox by: scale smoothing: factor