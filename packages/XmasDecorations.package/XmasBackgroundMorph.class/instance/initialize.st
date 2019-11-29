initialization
initialize

	super initialize.
	images := OrderedCollection new.
	random := Random new.
	self color: Color black.
	self changeTableLayout.
	self lock.