private
resetImageMorphAsync

	scalingProcess := [
		self basicResetImageMorph.
		scalingProcess := nil]
			forkAt: Processor userBackgroundPriority.