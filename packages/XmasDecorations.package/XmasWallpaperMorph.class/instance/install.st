initialization
install

	self switchImage; startSlideshow.
	self currentWorld addMorphBack: self.
	self computeMorphCacheForSize: self extent.