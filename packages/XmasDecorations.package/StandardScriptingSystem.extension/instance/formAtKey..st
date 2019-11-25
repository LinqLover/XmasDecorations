*XmasDecorations-overriding
formAtKey: aString
	"Answer the form saved under the given key"

	self xmasResources
		scriptIconAt: aString
		ifPresent: [:form | ^ form].
	
	Symbol hasInterned: aString ifTrue:
		[:aKey | ^ FormDictionary at: aKey ifAbsent: [FormDictionary at: #Cat]].
	^ FormDictionary at: #Cat