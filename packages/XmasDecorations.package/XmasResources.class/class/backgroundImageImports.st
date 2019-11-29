accessing
backgroundImageImports

	| imports selectors |
	imports := Imports new.
	selectors := self backgroundImageSelectors.
	selectors
		do: [:selector |
			imports
				importImage: (self perform: selector)
				named: selector]
		displayingProgress: 'Downloading background images ...'.
	^ imports