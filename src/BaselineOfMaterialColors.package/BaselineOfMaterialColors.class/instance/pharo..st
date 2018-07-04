baseline
pharo: spec
	spec
		for: #pharo
		do: [ spec
				package: 'Material-Design-Colors-Platform-Pharo' with: [ spec requires: 'Material-Design-Colors-Platform' ];
				package: 'Material-Design-Colors-Platform' with: [ spec includes: 'Material-Design-Colors-Platform-Pharo' ] ]