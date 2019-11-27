stepping
step

	| sign |
	hasReachedTarget = true
		ifTrue: [^ self].
	value := value + (deltaSign * speed).
	sign := self computeDeltaSign.
	(deltaSign notNil and: [deltaSign ~= sign])
		ifTrue: [
			value := target.
			self reachedTarget.].
	deltaSign := sign.