baseline
pharo: spec
	spec
		for: #pharo
		do: [ spec
				package: 'Material-Design-Colors-Platform-Pharo' with: [ spec requires: 'Material-Design-Colors' ];
				package: 'Material-Design-Colors' with: [ spec includes: 'Material-Design-Colors-Platform-Pharo' ] ]