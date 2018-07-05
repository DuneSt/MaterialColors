tests
testAsString
	"Skip test on Gemstone because it manage the #asString for colors differently."
	MaterialColorPlatform current isGemstone ifTrue: [ ^ self ].
	
	self assert: MDLColor yellow asString equals: '(MDLColor tint: #yellow code: #''500'')'.
	self assert: MDLColor blue lighter lighter asString equals: '(MDLColor tint: #blue code: #''300'')'.
	self assert: MDLColor brown darker asString equals: '(MDLColor tint: #brown code: #''600'')'