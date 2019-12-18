tests
test

	| window |
	self
		shouldnt: [window := XmasDecorationsController open. World doOneCycleNow]
		raise: UnhandledError.
	self
		shouldnt: [window delete]
		raise: UnhandledError.