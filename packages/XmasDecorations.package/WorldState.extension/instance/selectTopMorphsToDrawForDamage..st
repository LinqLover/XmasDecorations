*XmasDecorations-top morphs
selectTopMorphsToDrawForDamage: damageList

	^ self topMorphs select: [:morph |
		morph needsToBeDrawn and: [
			morph hasChanged or: [
				| bounds |
				bounds := morph fullBounds.
				damageList anySatisfy: [:r | r intersects: bounds]]]]