accessing
backgroundImageImports

	| imports selectors importBlock |
	imports := Imports new.
	selectors := self backgroundImageSelectors.
	importBlock := [:selector |
		imports
			importImage: (self perform: selector)
			named: selector].
	((cache ifNotNil: #keys ifNil: #()) includesAllOf: selectors)
		ifTrue: [
			selectors do: importBlock ]
		ifFalse: [
			selectors
				do: importBlock
				displayingProgress: 'Downloading background images ...' ].
	^ imports