initialization
initialize

	super initialize.
	random := Random new.
	self color: Color black.
	self changeTableLayout.
	self lock.
	isSlideshowMode := false.
	morphCache := Dictionary new.