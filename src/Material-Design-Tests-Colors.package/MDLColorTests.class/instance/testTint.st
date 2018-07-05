tests
testTint
	self assert: (MDLColor tint: #orange) equals: MDLColor orange.
	"Ensure String and Symbol works"
	self assert: (MDLColor tint: 'orange') equals: MDLColor orange.
	self assert: (MDLColor tint: #orange) asRGBA equals: 'rgba(255,152,0,1)'