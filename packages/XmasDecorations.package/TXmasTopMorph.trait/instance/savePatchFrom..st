drawing
savePatchFrom: aCanvas 
	"Save the part of the given canvas under the receiver as a Form and return its bounding rectangle."

	| damageRect bounds savedPatch |
	damageRect := bounds := self fullBounds.
	savedPatch := self valueOfProperty: #savedPatch.
	savedPatch ifNotNil: [
			damageRect := bounds merge: (savedPatch offset extent: savedPatch extent)].
	(savedPatch isNil or: [savedPatch extent ~= bounds extent]) 
		ifTrue: 
			["allocate new patch form if needed"
			savedPatch := aCanvas form allocateForm: bounds extent.
			self setProperty: #savedPatch toValue: savedPatch].
	aCanvas
		contentsOfArea: (bounds translateBy: aCanvas origin)
		into: savedPatch.
	savedPatch offset: bounds topLeft.
	Transcript showln: damageRect.
	^damageRect