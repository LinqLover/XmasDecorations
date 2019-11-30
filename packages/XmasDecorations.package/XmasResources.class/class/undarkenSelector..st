accessing - selectors
undarkenSelector: aSymbol

	self assert: [aSymbol beginsWith: 'dark'].
	^ (aSymbol allButFirst: 'dark' size) withFirstCharacterDownshifted asSymbol