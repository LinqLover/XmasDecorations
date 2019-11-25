System-Preferences
applyUserInterfaceTheme

	super applyUserInterfaceTheme.
	self allSubInstancesDo: [:flake |
		flake privateApplyUserInterfaceTheme].
	Display restore.