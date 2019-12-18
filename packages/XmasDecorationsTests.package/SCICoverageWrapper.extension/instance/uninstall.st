*XmasDecorationsTests-actions-override
uninstall
	(reference actualClass ifNil: [^ self]) methodDictionary
		at: reference selector
		put: method