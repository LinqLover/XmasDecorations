as yet unclassified
doesNotUnderstand: aMessage

	(self isDarkSelector: aMessage selector)
		ifFalse: [^ super doesNotUnderstand: aMessage].
	^ self darken: (self perform: (aMessage selector allButFirst: 'dark' size) withFirstCharacterDownshifted asSymbol)