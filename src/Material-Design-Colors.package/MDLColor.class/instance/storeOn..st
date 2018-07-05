printing
storeOn: aStream
	aStream
		nextPut: $(;
		nextPutAll: self class name;
		nextPutAll: ' tint: ';
		print: self tint;
		nextPutAll: ' code: ';
		print: self code;
		nextPut: $)