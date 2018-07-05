printing
storeOn: aStream
	aStream
		nextPut: $(;
		nextPutAll: self class name;
		nextPutAll: ' tint: #''';
		nextPutAll: self tint;
		nextPutAll: ''' code: #''';
		nextPutAll: self code;
		nextPutAll: ''')'