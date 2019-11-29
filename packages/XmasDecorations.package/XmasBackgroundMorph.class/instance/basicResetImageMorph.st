private
basicResetImageMorph

	self removeAllMorphs.
	self addMorph: (currentImage scaledIntoFormOfMinSize: self extent) asMorph.