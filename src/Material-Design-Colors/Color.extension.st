Extension { #name : #Color }

{ #category : #'*Material-Design-Colors' }
Color >> asRGBA [
	^ String
		streamContents: [ :s | 
			| alph |
			alph := self alpha asString.
			(alph endsWith: '.0')
				ifTrue: [ alph := alph allButLast: 2 ].
			s
				nextPutAll: 'rgba(';
				print: (self red * 255) ceiling;
				nextPut: $,;
				print: (self green * 255) ceiling;
				nextPut: $,;
				print: (self blue * 255) ceiling;
				nextPut: $,;
				nextPutAll: alph;
				nextPut: $) ]
]
