*XmasDecorations-override
displayWorld: aWorld submorphs: submorphs
	"Update this world's display."

	| deferredUpdateMode handsToDraw allDamage worldDamageRects topMorphDamageRects handDamageRects allMorphsToDraw topMorphsToDraw |

	aWorld fullBounds. "send #ownerChanged to submorphs."
	submorphs do: [:m | m fullBounds].  "force re-layout if needed"
	self checkIfUpdateNeeded ifFalse: [^ self].  "display is already up-to-date"

	deferredUpdateMode := self doDeferredUpdatingFor: aWorld.
	deferredUpdateMode ifFalse: [self assuredCanvas].

	worldDamageRects := self drawWorld: aWorld submorphs: submorphs invalidAreasOn: self assuredCanvas.  "repair world's damage on canvas"
	"self handsDo:[:h| h noticeDamageRects: worldDamageRects]."
	topMorphsToDraw := self selectTopMorphsToDrawForDamage: worldDamageRects.
	topMorphDamageRects := topMorphsToDraw collect: [:m | m savePatchFrom: canvas].
	allDamage := worldDamageRects , topMorphDamageRects.
	handsToDraw := self selectHandsToDrawForDamage: allDamage.
	handDamageRects := handsToDraw collect: [:h | h savePatchFrom: canvas].
	allDamage := allDamage, handDamageRects.
	allMorphsToDraw := handsToDraw, topMorphsToDraw.
	
	allMorphsToDraw reverseDo: [:m | canvas fullDrawMorph: m].

	"*make this true to flash damaged areas for testing*"
	Preferences debugShowDamage ifTrue: [aWorld flashRects: allDamage color: Color black].

	canvas finish: allDamage.

	"quickly copy altered rects of canvas to Display:"
	deferredUpdateMode
		ifTrue: [self forceDamageToScreen: allDamage]
		ifFalse: [canvas showAt: aWorld viewBox origin invalidRects: allDamage].
	allMorphsToDraw do: [:m | m restoreSavedPatchOn: canvas].
	Display deferUpdates: false; forceDisplayUpdate.
