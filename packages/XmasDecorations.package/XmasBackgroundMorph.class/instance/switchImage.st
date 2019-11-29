slideshow
switchImage

	| nextImages |
	nextImages := self imports images copyWithout: currentImage.
	nextImages ifEmpty: [^ self].
	currentImage := nextImages atRandom: random.
	self resetImageMorph.