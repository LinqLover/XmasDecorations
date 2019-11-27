drawing
drawOn: aCanvas

	| area |
	self owner ifNil: [^ self].
	area := self owner visibleClearArea.
	self submorphsDo: [:flake |
		(area intersects: flake fullBounds)
			ifTrue: [flake drawOn: aCanvas]].