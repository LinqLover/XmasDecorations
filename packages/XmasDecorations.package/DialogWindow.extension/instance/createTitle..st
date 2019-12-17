*XmasDecorations-initialization-override
createTitle: aString 
	"Mimick behavior of MenuMorph title creation."
	
	| box closeButton menuButton |
	box := Morph new
		name: #title;
		changeTableLayout;
		listDirection: #leftToRight;
		yourself.
	
	titleMorph := aString asText asMorph lock.

	closeButton := SystemWindowButton new
		color: Color transparent;
		target: self;
		actionSelector: #cancelDialog;
		balloonText: 'Cancel this dialog' translated;
		borderWidth: 0;
		labelGraphic: (SystemWindow closeBoxImage scaledIntoFormOfSize: self boxExtent);
		extent: self boxExtent;
		visible: self class includeCloseButton;
		yourself.

	menuButton := SystemWindowButton new
		color: Color transparent;
		target: self;
		actionSelector: #offerDialogMenu;
		balloonText: 'Dialog menu' translated;
		borderWidth: 0;
		labelGraphic: (SystemWindow menuBoxImage scaledIntoFormOfSize: self boxExtent);
		extent: self boxExtent;
		visible: self class includeControlMenu;
		yourself.
	
	box addAllMorphs: {closeButton. titleMorph. menuButton}.
	
	self addMorphBack: box.
	self setTitleParameters.