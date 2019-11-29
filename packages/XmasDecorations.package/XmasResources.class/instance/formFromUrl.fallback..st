tools
formFromUrl: aUrl fallback: anotherUrl

	^ [self formFromUrl: aUrl]
		ifError: [self formFromUrl: anotherUrl]