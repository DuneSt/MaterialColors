baseline
baseline: spec
	<baseline>
	spec
		for: #common
		do: [
			spec postLoadDoIt: #logs.
			"Packages"
			spec
				package: 'Material-Design-Colors-Platform';
				package: 'Material-Design-Colors' with: [ spec requires: 'Material-Design-Colors-Platform' ];
				package: 'Material-Design-Tests-Colors' with: [ spec requires: 'Material-Design-Colors' ].

			"Groups"
			spec
				group: 'Core' with: #('Material-Design-Colors');
				group: 'all' with: #('default');
				group: 'Tests' with: #('Material-Design-Tests-Colors') ].
	self 
		pharo: spec;
		gemStone: spec