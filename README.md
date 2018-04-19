# MaterialColors

#### Linux/OSX builds
Master: [![Build Status](https://travis-ci.org/DuneSt/MaterialColors.svg?branch=master)](https://travis-ci.org/DuneSt/MaterialColors)

#### Windows builds
Master: [![Build status](https://ci.appveyor.com/api/projects/status/3dn6m0k68jjenk6v/branch/master?svg=true)](https://ci.appveyor.com/project/jecisc/materialcolors/branch/master) | Latest commit: [![Build status](https://ci.appveyor.com/api/projects/status/3dn6m0k68jjenk6v?svg=true)](https://ci.appveyor.com/project/jecisc/materialcolors) 

A project to extends Pharo colors's classes with the Material Design recommandations


# Documentation

## Version management 

This project use semantic versionning to define the releases. This mean that each stable release of the project will get associate a version number of the form `vX.Y.Z`. 

- **X** define the major version number
- **Y** define the minor version number 
- **Z** define the patch version number

When a release contains only bug fixes, the patch number increase. When the release contains new features backward compatibles, the minor version increase. When the release contains breaking changes, the major version increase. 

Thus, it should be safe to depend on a fixed major version and moving minor version of this project.

## Install MaterialColors

To install MaterialColors on your Pharo image you can just execute the following script: 

```Smalltalk
    Metacello new
    	githubUser: 'DuneSt' project: 'MaterialColors' commitish: 'master' path: 'src';
    	baseline: 'MaterialColors';
    	onWarningLog;
    	load
```

To add MaterialColors to your baseline just add this: 

```Smalltalk
    spec
    	baseline: 'MaterialColors'
    	with: [ spec repository: 'github://DuneSt/MaterialColors:master/src' ]
```
    	
Note that you can replace the #master by another branch as #development or a tag as #v1.0.0 or #v1.0.? or #v1.x.x .


## Contact

If you have any question or problem do not hesitate to open an issue or contact cyril (a) ferlicot.me 