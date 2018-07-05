accessing
allSelectorsOf: aClass from: aSymbol
	"Return the lists of selectors understood by <aClass> and categorized in a protocol named <aSymbol>"
	
	^ aClass allMethods select: [ :each | each protocol = aSymbol ] thenCollect: #selector