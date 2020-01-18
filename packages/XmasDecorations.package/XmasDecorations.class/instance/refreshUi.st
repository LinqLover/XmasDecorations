installation
refreshUi

	SystemWindow refreshAllWindows.
	self currentWorld toggleShowWorldMainDockingBar.
	UserInterfaceTheme current apply.
	Locale localeChanged.
	self currentWorld toggleShowWorldMainDockingBar.