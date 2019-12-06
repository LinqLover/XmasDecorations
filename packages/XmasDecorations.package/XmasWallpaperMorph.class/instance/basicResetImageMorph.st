private
basicResetImageMorph

	self removeAllMorphs.
	self addMorph: (self morphForImage: currentImage size: self extent).