*Material-Design-Colors
asRGBA
	^ String
		streamContents: [ :s | 
			| alph |
			alph := self alpha asString.
			(alph endsWith: '.0')
				ifTrue: [ alph := alph allButLast: 2 ].
			s
				nextPutAll: 'rgba(';
				<< (self red * 255) ceiling;
				nextPut: $,;
				<< (self green * 255) ceiling;
				nextPut: $,;
				<< (self blue * 255) ceiling;
				nextPut: $,;
				<< alph;
				nextPut: $) ]