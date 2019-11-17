*XmasDecorations-printing
storeOn: aStream

	aStream
		nextPut: $(;
		nextPutAll: self species name;
		space;
		nextPutAll: #with:;
		space;
		store: self form;
		nextPut: $).