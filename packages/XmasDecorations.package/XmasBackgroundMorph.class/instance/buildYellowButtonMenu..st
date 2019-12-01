menus
buildYellowButtonMenu: aHand 
	"Hacked to show a minimal command set via world menu"
	| menu |
	menu := MenuMorph new defaultTarget: self.
	super addNestedYellowButtonItemsTo: menu event: ActiveEvent.
	MenuIcons decorateMenu: menu.
	^ menu