*XmasDecorations-override
displayWorld: aWorld submorphs: submorphs
	"Update this world's display."

	| deferredUpdateMode handsToDraw allDamage handDamageRects worldDamageRects topMorphDamageRects topMorphsToDraw |

	aWorld fullBounds. "send #ownerChanged to submorphs."
	submorphs do: [:m | m fullBounds].  "force re-layout if needed"
	"self checkIfUpdateNeeded ifFalse: [^ self]."  "display is already up-to-date"

	deferredUpdateMode := self doDeferredUpdatingFor: aWorld.
	deferredUpdateMode ifFalse: [self assuredCanvas].

	worldDamageRects := self drawWorld: aWorld submorphs: submorphs invalidAreasOn: self assuredCanvas.  "repair world's damage on canvas"
	"self handsDo:[:h| h noticeDamageRects: worldDamageRects]."
	handsToDraw := self selectHandsToDrawForDamage: worldDamageRects.
	topMorphsToDraw := aWorld xmasDecorations topMostMorphs.
	topMorphDamageRects := topMorphsToDraw collect: [:m | m savePatchFrom: canvas].
	topMorphsToDraw reverseDo: [:m | canvas fullDrawMorph: m].
	handDamageRects := handsToDraw collect: [:h | h savePatchFrom: canvas].
	
	handsToDraw reverseDo: [:h | canvas fullDrawMorph: h].  "draw hands onto world canvas"
	allDamage := worldDamageRects, handDamageRects, topMorphDamageRects.

	"*make this true to flash damaged areas for testing*"
	Preferences debugShowDamage ifTrue: [aWorld flashRects: allDamage color: Color black].

	canvas finish: allDamage.

	"quickly copy altered rects of canvas to Display:"
	deferredUpdateMode
		ifTrue: [self forceDamageToScreen: allDamage]
		ifFalse: [canvas showAt: aWorld viewBox origin invalidRects: allDamage].
	topMorphsToDraw do: [:m | m restoreSavedPatchOn: canvas].  "restore world canvas under hands"
	handsToDraw do: [:h | h restoreSavedPatchOn: canvas].  "restore world canvas under hands"
	Display deferUpdates: false; forceDisplayUpdate.
