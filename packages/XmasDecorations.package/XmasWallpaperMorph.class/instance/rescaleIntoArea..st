private
rescaleIntoArea: aRectangle

	scalingProcess ifNotNil: #terminate.
	self bounds: aRectangle.
	self resetImageMorphAsync.