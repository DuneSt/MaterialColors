baseline
gemStone: spec
	spec
		for: #gemstone
		do: [ spec
				package: 'PackageManifest' with: [ spec repository: 'http://smalltalkhub.com/mc/pdebruic/PackageManifest/main' ];
				package: 'Material-Design-Colors' with: [ spec requires: 'PackageManifest' ] ]