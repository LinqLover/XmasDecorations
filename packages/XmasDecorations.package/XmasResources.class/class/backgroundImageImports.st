accessing
backgroundImageImports

	| imports |
	imports := Imports new.
	(self allSelectorsBelow: thisContext receiver superclass)
		select: [:selector |
			self instance isBackgroundSelector: selector]
		thenDo: [:selector | imports
			importImage: (self perform: selector)
			named: selector].
	^ imports