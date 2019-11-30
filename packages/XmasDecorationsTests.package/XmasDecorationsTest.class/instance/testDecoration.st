testing
testDecoration
	<timeout: 30 "seconds">

	self shouldnt: [ XmasDecorations decorate ] raise: UnhandledError.
	self assertWorldHealth.
	Transcript showln: XmasDecorations current.
	self assert: [ XmasDecorations isActive ].
	self assert: [ self xmasDecorations isActiveDecorations ].
	Transcript showln: PluggableTextMorph new fillStyle.
	self assert: [ self checkDecorated ].
	self shouldnt: [ XmasDecorations undecorate ] raise: UnhandledError.
	self assertWorldHealth.
	self deny: [ self checkDecorated ].