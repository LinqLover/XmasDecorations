running
okToRunCase

	self isCiServer
		ifTrue: [^ true].
	((self class lookupSelector: self selector) hasPragma: #sideEffects)
		ifFalse: [^ true].
	^ self confirm: ('This test case has important side effects:\{1}\Running it might seriously impact your installation.\Are you sure you want to proceed?' withCRs
			format: { self })