baseline
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ 
			"Packages"
			spec
				package: 'Material-Design-Colors';
				package: 'Material-Design-Tests-Colors' with: [ spec requires: #('Material-Design-Colors') ].

			"Groups"
			spec
				group: 'Core' with: #('Material-Design-Colors');
				group: 'all' with: #('default');
				group: 'Tests' with: #('Material-Design-Tests-Colors') ].
	self gemStone: spec