menus
addNestedYellowButtonItemsTo: aMenu event: anEvent

	aMenu add: 'Switch background image' action: #switchImage.
	aMenu add: 'Change slideshow images' action: #changeSlideshowImages.
	aMenu add: ('<{1}> Stepping' format: {self isStepping onOrOffString}) action: #toggleStepping.