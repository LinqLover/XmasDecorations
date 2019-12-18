tests
testDecoration
	<timeout: 30 "seconds">

	XmasDecorations stopSteppingDuring: [
		self shouldnt: [ XmasDecorations decorate ] raise: UnhandledError.
		self assertWorldHealth.
		self assert: [ XmasDecorations isActive ].
		self assert: [ self checkDecorated ].
		self shouldnt: [ XmasDecorations undecorate ] raise: UnhandledError.
		self assertWorldHealth.
		self deny: [ XmasDecorations isActive ].
		self deny: [ self checkDecorated ] ].