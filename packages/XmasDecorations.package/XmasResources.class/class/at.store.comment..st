storing
at: aSymbol store: anObject comment: aComment

	| storeString |
	storeString := (anObject compactStoreString
		lines collect: [:line | line copyWithFirst: Character tab])
			joinSeparatedBy: String cr.
	self
		compile: (String streamContents: [:code |
			code
				nextPutAll: aSymbol;
				crtab; nextPutAll: '<generated>'.
			aComment ifNotNil: [code
				crtab; nextPut: $"; nextPutAll: aComment; nextPut: $"].
			code
				cr;
				crtab; nextPut: $^;
				nextPutAll: storeString])
		classified: #'generated'.
	self removeFromCache: aSymbol.