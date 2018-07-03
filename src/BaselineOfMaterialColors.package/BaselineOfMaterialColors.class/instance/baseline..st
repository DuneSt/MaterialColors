baseline
baseline: spec
  <baseline>
  spec
    for: #'common'
    do: [ 
      spec
        package: 'Material-Design-Colors';
        package: 'Material-Design-Tests-Colors'
          with: [ spec requires: #('Material-Design-Colors') ].
      spec
        group: 'Core' with: #('Material-Design-Colors');
        group: 'all' with: #('default');
        group: 'Tests' with: #('Material-Design-Tests-Colors') ].
  spec
    for: #'gemstone'
    do: [ 
      spec
        package: 'PackageManifest'
          with: [ spec repository: 'http://smalltalkhub.com/mc/pdebruic/PackageManifest/main' ];
        package: 'Material-Design-Colors'
          with: [ spec requires: 'PackageManifest' ] ]