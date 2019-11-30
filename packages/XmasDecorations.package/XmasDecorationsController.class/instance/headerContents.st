toolbuilder
headerContents

	| headerMorph |
	Smalltalk isMorphic
		ifFalse: [^ 'XmasDecorations'].
	headerMorph := ((MenuIcons squeakLogoIconColorized:
			PluggableTextMorph new userInterfaceTheme textColor)
		scaledToHeight: self headerHeight - 5) asMorph.
	^ (String value: 1) asText
		addAttribute: (TextAnchor new
			anchoredMorph: headerMorph;
			yourself);
		flag: #ct; "When introduced, use #textAnchorVerticalAlignment:"
		addAttribute: TextAlignment centered;
		yourself