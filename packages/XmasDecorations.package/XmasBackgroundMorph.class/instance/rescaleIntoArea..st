private
rescaleIntoArea: aRectangle

	scalingProcess ifNotNil: #terminate.
	self bounds: aRectangle.
	scalingProcess := [
		self resetImageMorph.
		scalingProcess := nil]
			forkAt: Processor userBackgroundPriority.