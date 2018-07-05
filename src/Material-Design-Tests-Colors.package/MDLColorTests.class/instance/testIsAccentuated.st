tests
testIsAccentuated
	self deny: (MDLColor tint: #orange code: '500') isAccentuated.
	self assert: (MDLColor tint: #orange code: 'A400' ) isAccentuated