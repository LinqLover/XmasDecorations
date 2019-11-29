drawing
savePatchFrom: aCanvas 
	"Save the part of the given canvas under the receiver as a Form and return its bounding rectangle."

	| damageRect myBounds savedPatch |
	damageRect := myBounds := self fullBounds.
	savedPatch := self valueOfProperty: #savedPatch.
	savedPatch ifNotNil: [
			damageRect := myBounds merge: (savedPatch offset extent: savedPatch extent)].
	(savedPatch isNil or: [savedPatch extent ~= myBounds extent]) 
		ifTrue: 
			["allocate new patch form if needed"
			savedPatch := aCanvas form allocateForm: myBounds extent.
			self setProperty: #savedPatch toValue: savedPatch].
	aCanvas
		contentsOfArea: (myBounds translateBy: aCanvas origin)
		into: savedPatch.
	savedPatch offset: myBounds topLeft.
	^damageRect