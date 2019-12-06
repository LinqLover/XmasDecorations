slideshow
switchImage

	| nextImages |
	self removeSlideshowAlarm.
	nextImages := self imports images copyWithout: currentImage.
	nextImages ifEmpty: [^ self].
	currentImage := nextImages atRandom: random.
	self resetImageMorphAsync.
	self addSlideshowAlarm.