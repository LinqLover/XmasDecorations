slideshow
switchImage

	| nextImages |
	nextImages := self images copyWithout: currentImage.
	nextImages ifEmpty: [^ self].
	currentImage := nextImages atRandom: random.
	self resetImageMorph.