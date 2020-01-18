running
runCase

	self okToRunCase
		ifFalse: [^ self].
	^ super runCase