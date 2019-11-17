accessing
position: aPoint 
	"Change the position of this morph, which is the top left corner of its bounds."
	
	| delta box |
	delta := (aPoint - self bounds topLeft) rounded.
	
	"Skip drawing and layout updates for null changes."
	(delta x = 0 and: [delta y = 0])
		ifTrue: [^ self].

	"Optimize drawing. Record one damage rectangle for short distance and two damage rectangles for large distances."
	box := self bounds.	
"	(delta dotProduct: delta) > 100
		ifTrue: [self
					invalidRect: box;
					invalidRect: (box translateBy: delta)]
		ifFalse: [self
					invalidRect: (box merge: (box translateBy: delta))]."
	
	"Move this morph and *all* of its submorphs."
	self privateFullMoveBy: delta.