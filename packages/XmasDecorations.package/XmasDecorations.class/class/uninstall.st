installation
uninstall

	self current: XmasNullDecorations new.
	IsInstalled := false.
	Beeper clearDefault.
	UserInterfaceTheme current apply.
	Locale localeChanged.