assertions
assertWorldHealth

	self shouldnt: [ World doOneCycleNow ] raise: UnhandledError