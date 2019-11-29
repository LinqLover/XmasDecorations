*XmasDecorations-overriding
squeakMenuOn: aDockingBar 
	"Private - fill the given docking bar"
	
	aDockingBar addItem: [ :item |
		item
			contents: '';
			icon: (MenuIcons squeakLogoIcon "dyed:
				(self userInterfaceTheme logoColor ifNil: [Color black])");
			selectedIcon: (MenuIcons squeakLogoIcon dyed:
				(self userInterfaceTheme selectionLogoColor ifNil: [Color white]));
			addSubMenu: [ :menu | 
				self
					aboutMenuItemOn: menu;
					updateMenuItemOn: menu.
				menu addLine.
				self 
					saveMenuItemOn: menu;
					saveAsMenuItemOn: menu;
					saveAsNewVersionMenuItemOn: menu.
				menu addLine.
				self
					saveAndQuitMenuItemOn: menu;
					quitMenuItemOn: menu ] ]