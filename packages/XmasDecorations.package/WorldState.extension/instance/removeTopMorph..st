*XmasDecorations-top morphs
removeTopMorph: aMorph

	(self topMorphs includes: aMorph) ifFalse: [^self].
	self topMorphs remove: aMorph.