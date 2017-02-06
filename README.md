# MaterialColors

####Linux/OSX builds
Master: [![Build Status](https://travis-ci.org/DuneSt/MaterialColors.svg?branch=master)](https://travis-ci.org/DuneSt/MaterialColors)

####Windows builds
Master: [![Build status](https://ci.appveyor.com/api/projects/status/3dn6m0k68jjenk6v/branch/master?svg=true)](https://ci.appveyor.com/project/jecisc/materialcolors/branch/master) | Latest commit: [![Build status](https://ci.appveyor.com/api/projects/status/3dn6m0k68jjenk6v?svg=true)](https://ci.appveyor.com/project/jecisc/materialcolors) 

A project to extends Pharo colors's classes with the Material Design recommandations

## Install MaterialColors

To install MaterialColors on your Pharo image you can just execute the following script: 

    Metacello new
    	githubUser: 'DuneSt' project: 'MaterialColors' commitish: 'master' path: 'src';
    	baseline: 'MaterialColors';
    	onWarningLog;
    	load

To add MaterialColors to your baseline just add this: 

    spec
    	baseline: 'MaterialColors'
    	with: [ spec repository: 'github://DuneSt/MaterialColors:master/src' ]
    	
Note that you can replace the #master by another branch as #development or a tag as #v1.0.0.


