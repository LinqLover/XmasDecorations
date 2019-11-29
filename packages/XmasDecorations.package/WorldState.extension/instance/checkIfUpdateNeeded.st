*XmasDecorations-override
checkIfUpdateNeeded

	^ damageRecorder updateIsNeeded or: [
		self allTopMorphs anySatisfy: [ :morph |
			morph hasChanged and: [ morph needsToBeDrawn ] ] ]