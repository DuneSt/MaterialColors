tests
testTintCode
	self assert: (MDLColor tint: #orange code: #'800') asRGBA equals: 'rgba(239,108,0,1)'.
	"Ensure String and Symbol works"
	self assert: (MDLColor tint: 'orange' code: #'800') asRGBA equals: 'rgba(239,108,0,1)'.
	self assert: (MDLColor tint: 'orange' code: '800') asRGBA equals: 'rgba(239,108,0,1)'.