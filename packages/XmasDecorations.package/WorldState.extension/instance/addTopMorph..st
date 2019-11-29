*XmasDecorations-top morphs
addTopMorph: aMorph

	self topMorphs
		remove: aMorph ifAbsent: [];
		add: aMorph.