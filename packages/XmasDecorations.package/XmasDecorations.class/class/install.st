installation
install

	self current: self new.
	IsInstalled := true.
	Beeper setDefault: self xmasResources soundHohoho.
	UserInterfaceTheme current apply.
	Locale localeChanged.