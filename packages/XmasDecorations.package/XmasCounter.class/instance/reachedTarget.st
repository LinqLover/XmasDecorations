stepping
reachedTarget

	hasReachedTarget := true.
	targetReachedBlock ifNotNil: [:block |
		block cull: self].