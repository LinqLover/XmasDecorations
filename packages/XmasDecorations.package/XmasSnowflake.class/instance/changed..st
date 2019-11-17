updating
changed: anAspect

	anAspect = #color ifTrue: [
		self color: (self baseColor alpha: self opacity)].
	^ super changed: anAspect