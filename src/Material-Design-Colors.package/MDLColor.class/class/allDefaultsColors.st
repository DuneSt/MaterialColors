accessing
allDefaultsColors
	^ (MaterialColorPlatform current allSelectorsOf: self class from: #'defaults - colors') collect: [ :selector | MDLColor perform: selector ]