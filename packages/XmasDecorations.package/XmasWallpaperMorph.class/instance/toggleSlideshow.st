slideshow
toggleSlideshow

	self isSlideshowMode
		ifFalse: [self startSlideshow]
		ifTrue: [self stopSlideshow].