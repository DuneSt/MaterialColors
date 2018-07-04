accessing
allDefaultsColors
	^ self class allMethods select: [ :each | each protocol = #'defaults - colors' ] thenCollect: [ :m | MDLColor perform: m selector ]