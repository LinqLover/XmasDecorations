stepping
step

	self owner bounds in: [:ownerBounds |
		self bounds ~= ownerBounds ifTrue: [
			self bounds: ownerBounds]].
	self submorphsDo: #step.