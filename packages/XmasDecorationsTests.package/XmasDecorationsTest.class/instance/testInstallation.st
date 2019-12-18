tests
testInstallation
	<timeout: 60 "seconds">
	<sideEffects>

	self shouldnt: [ XmasDecorations install ] raise: UnhandledError.
	self assertWorldHealth.