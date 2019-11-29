change reporting
ownerChanged

	| newBounds |
	newBounds := self owner visibleClearArea.
	self bounds = newBounds ifTrue: [^ self].
	self rescaleIntoArea: newBounds.