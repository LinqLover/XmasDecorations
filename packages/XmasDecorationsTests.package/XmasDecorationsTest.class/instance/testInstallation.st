testing
testInstallation
	<timeout: 30 "seconds">

	self shouldnt: [ XmasDecorations install ] raise: UnhandledError.
	self assertWorldHealth.
	self assert: [ self checkInstalled ].
	self shouldnt: [ XmasDecorations uninstall ] raise: UnhandledError.
	self assertWorldHealth.
	self deny: [ self checkInstalled ].