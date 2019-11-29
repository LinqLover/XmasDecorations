testing
testDecoration
	<timeout: 30 "seconds">

	self shouldnt: [ XmasDecorations decorate ] raise: UnhandledError.
	self assertWorldHealth.
	self assert: [ self checkDecorated ].
	self shouldnt: [ XmasDecorations undecorate ] raise: UnhandledError.
	self assertWorldHealth.
	self deny: [ self checkDecorated ].