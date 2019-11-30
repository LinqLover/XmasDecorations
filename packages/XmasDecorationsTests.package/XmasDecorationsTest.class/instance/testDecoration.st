testing
testDecoration
	<timeout: 30 "seconds">

	self shouldnt: [ XmasDecorations decorate ] raise: UnhandledError.
	self assertWorldHealth.
	Transcript showln: XmasDecorations current.
	Project current uiManager informUser: 'foo' during: [
		Transcript showln: 'This happens'].
	self assert: [ XmasDecorations isActive ].
	Transcript showln: PluggableTextMorph new fillStyle.
	self assert: [ self checkDecorated ].
	self shouldnt: [ XmasDecorations undecorate ] raise: UnhandledError.
	self assertWorldHealth.
	self deny: [ self checkDecorated ].