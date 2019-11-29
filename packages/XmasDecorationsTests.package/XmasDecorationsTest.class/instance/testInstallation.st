testing
testInstallation
	<timeout: 60 "seconds">

	self shouldnt: [ XmasDecorations install ] raise: UnhandledError.
	self assertWorldHealth.