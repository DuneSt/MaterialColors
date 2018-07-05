accessing
allSelectorsOf: aClass from: aSymbol
	"Return the lists of selectors understood by <aClass> and categorized in a protocol named <aSymbol>"

	^ aClass allSelectors select: [ :selector | (aClass categoryOfSelector: selector) = aSymbol ]