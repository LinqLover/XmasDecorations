printing
storeOn: aStream

	aStream
		nextPut: $(;
		nextPutAll: self className;
		space;
		print: (Message
			selector: #value:target:speed:
			arguments: {self value. self target. self speed});
		nextPut: $).