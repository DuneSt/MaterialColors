tests
testStoreOn
	self assert: (String streamContents: [ :s | MDLColor yellow storeOn: s ]) equals: '(MDLColor tint: #yellow code: #''500'')'.
	self assert: (String streamContents: [ :s | MDLColor blue lighter lighter storeOn: s ]) equals: '(MDLColor tint: #blue code: #''300'')'.
	self assert: (String streamContents: [ :s | MDLColor brown darker storeOn: s ]) equals: '(MDLColor tint: #brown code: #''600'')'