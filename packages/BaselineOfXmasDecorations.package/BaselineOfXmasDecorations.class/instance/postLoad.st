scripts
postLoad

	(PackageInfo named: #XmasDecorations) classes do: #initialize.
	XmasDecorations install.
	XmasDecorationsController open.