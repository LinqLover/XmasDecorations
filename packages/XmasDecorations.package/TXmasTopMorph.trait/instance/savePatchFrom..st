drawing
savePatchFrom: aCanvas 
	"Save the part of the given canvas under the receiver as a Form and return its bounding rectangle."

	| damageRect myBnds savedPatch |
	damageRect := myBnds := self fullBounds.
	savedPatch := self valueOfProperty: #savedPatch.
	savedPatch ifNotNil: [
			damageRect := myBnds merge: (savedPatch offset extent: savedPatch extent)].
	(savedPatch isNil or: [savedPatch extent ~= myBnds extent]) 
		ifTrue: 
			["allocate new patch form if needed"
			savedPatch := aCanvas form allocateForm: myBnds extent.
			self setProperty: #savedPatch toValue: savedPatch].
	aCanvas contentsOfArea: (myBnds translateBy: aCanvas origin)
		into: savedPatch.
	savedPatch offset: myBnds topLeft.
	^damageRect