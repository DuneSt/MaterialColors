"
I am a baseline of MaterialColors. 
Read more at: https://github.com/DuneSt/MaterialColors
"
Class {
	#name : #BaselineOfMaterialColors,
	#superclass : #BaselineOf,
	#category : 'BaselineOfMaterialColors'
}

{ #category : #baseline }
BaselineOfMaterialColors >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [
			"Packages"
			spec
				package: 'Material-Design-Colors';
				package: 'Material-Design-Tests-Colors' with: [ spec requires: 'Material-Design-Colors' ].

			"Groups"
			spec
				group: 'Core' with: #('Material-Design-Colors');
				group: 'all' with: #('default');
				group: 'Tests' with: #('Material-Design-Tests-Colors') ].
	self 
		pharo: spec;
		gemStone: spec
]

{ #category : #baseline }
BaselineOfMaterialColors >> gemStone: spec [
	spec
		for: #gemstone
		do: [ spec
				package: 'PackageManifest' with: [ spec repository: 'http://smalltalkhub.com/mc/pdebruic/PackageManifest/main' ];
				package: 'Material-Design-Colors' with: [ spec requires: 'PackageManifest' ];
				package: 'Material-Design-Colors-Platform-Gemstone' with: [ spec requires: 'Material-Design-Colors' ];
				package: 'Material-Design-Colors' with: [ spec includes: 'Material-Design-Colors-Platform-Gemstone' ] ]
]

{ #category : #baseline }
BaselineOfMaterialColors >> pharo: spec [
	spec
		for: #pharo
		do: [ spec
				package: 'Material-Design-Colors-Platform-Pharo' with: [ spec requires: 'Material-Design-Colors' ];
				package: 'Material-Design-Colors' with: [ spec includes: 'Material-Design-Colors-Platform-Pharo' ] ]
]

{ #category : #accessing }
BaselineOfMaterialColors >> projectClass [
	^ [ self class environment at: #MetacelloCypressBaselineProject ]
		on: NotFound
		do: [ super projectClass ]
]
