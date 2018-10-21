Class {
	#name : #MDLColorTests,
	#superclass : #TestCase,
	#category : 'Material-Design-Tests-Colors'
}

{ #category : #tests }
MDLColorTests >> testAllDefaultExist [
	| defaultColors |
	defaultColors := MDLColor allDefaultsColors.
	self assert: defaultColors size equals: 19
]

{ #category : #tests }
MDLColorTests >> testAsRGBA [
	"The values were found on Material Design standard."

	| rgbaMap |
	rgbaMap := Dictionary new
		at: #red put: 'rgba(244,67,54,1)';
		at: #pink put: 'rgba(233,30,99,1)';
		at: #purple put: 'rgba(156,39,176,1)';
		at: #deep_purple put: 'rgba(103,58,183,1)';
		at: #indigo put: 'rgba(63,81,181,1)';
		at: #blue put: 'rgba(33,150,243,1)';
		at: #light_blue put: 'rgba(3,169,244,1)';
		at: #cyan put: 'rgba(0,188,212,1)';
		at: #teal put: 'rgba(0,150,136,1)';
		at: #green put: 'rgba(76,175,80,1)';
		at: #light_green put: 'rgba(139,195,74,1)';
		at: #lime put: 'rgba(205,220,57,1)';
		at: #yellow put: 'rgba(255,235,59,1)';
		at: #amber put: 'rgba(255,193,7,1)';
		at: #orange put: 'rgba(255,152,0,1)';
		at: #deep_orange put: 'rgba(255,87,34,1)';
		at: #brown put: 'rgba(121,85,72,1)';
		at: #grey put: 'rgba(158,158,158,1)';
		at: #blue_grey put: 'rgba(96,125,139,1)';
		yourself.
	rgbaMap keysAndValuesDo: [ :tint :rgba | self assert: (MDLColor tint: tint) asRGBA equals: rgba ]
]

{ #category : #tests }
MDLColorTests >> testAsString [
	"Skip test on Gemstone because it manage the #asString for colors differently."
	MaterialColorPlatform current isGemstone ifTrue: [ ^ self ].
	
	self assert: MDLColor yellow asString equals: '(MDLColor tint: #yellow code: #''500'')'.
	self assert: MDLColor blue lighter lighter asString equals: '(MDLColor tint: #blue code: #''300'')'.
	self assert: MDLColor brown darker asString equals: '(MDLColor tint: #brown code: #''600'')'
]

{ #category : #tests }
MDLColorTests >> testDarkerColors [
	MDLColor allDefaultsColors
		do: [ :aColor | 
			self assert: aColor darker equals: (MDLColor tint: aColor tint code: '600').
			self assert: aColor darker darker equals: (MDLColor tint: aColor tint code: '700').
			self assert: aColor darker darker darker equals: (MDLColor tint: aColor tint code: '800').
			self assert: aColor darker darker darker darker equals: (MDLColor tint: aColor tint code: '900') ]
]

{ #category : #tests }
MDLColorTests >> testIsAccentuated [
	self deny: (MDLColor tint: #orange code: '500') isAccentuated.
	self assert: (MDLColor tint: #orange code: 'A400' ) isAccentuated
]

{ #category : #tests }
MDLColorTests >> testLighterColors [
	MDLColor allDefaultsColors
		do: [ :aColor | 
			self assert: aColor lighter equals: (MDLColor tint: aColor tint code: '400').
			self assert: aColor lighter lighter equals: (MDLColor tint: aColor tint code: '300').
			self assert: aColor lighter lighter lighter equals: (MDLColor tint: aColor tint code: '200').
			self assert: aColor lighter lighter lighter lighter equals: (MDLColor tint: aColor tint code: '100').
			self assert: aColor lighter lighter lighter lighter lighter equals: (MDLColor tint: aColor tint code: '50') ]
]

{ #category : #tests }
MDLColorTests >> testStoreOn [
	self assert: (String streamContents: [ :s | MDLColor yellow storeOn: s ]) equals: '(MDLColor tint: #yellow code: #''500'')'.
	self assert: (String streamContents: [ :s | MDLColor lightGreen storeOn: s ]) equals: '(MDLColor tint: #light_green code: #''500'')'.
	self assert: (String streamContents: [ :s | MDLColor blue lighter lighter storeOn: s ]) equals: '(MDLColor tint: #blue code: #''300'')'.
	self assert: (String streamContents: [ :s | MDLColor brown darker storeOn: s ]) equals: '(MDLColor tint: #brown code: #''600'')'.
	
	self assert: (Object readFromString: (String streamContents: [ :s | MDLColor yellow storeOn: s ])) equals: MDLColor yellow.
	self assert: (Object readFromString: (String streamContents: [ :s | MDLColor blue lighter lighter storeOn: s ])) equals: MDLColor blue lighter lighter
]

{ #category : #tests }
MDLColorTests >> testTint [
	self assert: (MDLColor tint: #orange) equals: MDLColor orange.
	"Ensure String and Symbol works"
	self assert: (MDLColor tint: 'orange') equals: MDLColor orange.
	self assert: (MDLColor tint: #orange) asRGBA equals: 'rgba(255,152,0,1)'
]

{ #category : #tests }
MDLColorTests >> testTintCode [
	self assert: (MDLColor tint: #orange code: #'800') asRGBA equals: 'rgba(239,108,0,1)'.
	"Ensure String and Symbol works"
	self assert: (MDLColor tint: 'orange' code: #'800') asRGBA equals: 'rgba(239,108,0,1)'.
	self assert: (MDLColor tint: 'orange' code: '800') asRGBA equals: 'rgba(239,108,0,1)'.
]
