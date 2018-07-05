accessing
current
	^ Current ifNil: [ self error: 'No platform registered' ]