menus
buildYellowButtonMenu: aHand 
	"build the morph menu for the yellow button"
	| menu |
	menu := MenuMorph new defaultTarget: self.
	super addNestedYellowButtonItemsTo: menu event: ActiveEvent.
	MenuIcons decorateMenu: menu.
	^ menu