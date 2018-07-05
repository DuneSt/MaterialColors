tests
testStoreOn
	self assert: (String streamContents: [ :s | MDLColor yellow storeOn: s ]) equals: '(MDLColor tint: #yellow code: #''500'')'.
	self assert: (String streamContents: [ :s | MDLColor lightGreen storeOn: s ]) equals: '(MDLColor tint: #light_green code: #''500'')'.
	self assert: (String streamContents: [ :s | MDLColor blue lighter lighter storeOn: s ]) equals: '(MDLColor tint: #blue code: #''300'')'.
	self assert: (String streamContents: [ :s | MDLColor brown darker storeOn: s ]) equals: '(MDLColor tint: #brown code: #''600'')'.
	
	self assert: (Object readFromString: (String streamContents: [ :s | MDLColor yellow storeOn: s ])) equals: MDLColor yellow.
	self assert: (Object readFromString: (String streamContents: [ :s | MDLColor blue lighter lighter storeOn: s ])) equals: MDLColor blue lighter lighter