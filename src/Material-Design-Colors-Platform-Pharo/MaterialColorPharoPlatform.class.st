"
Description
--------------------

Platform managing the Pharo specific code of MaterialDesignColors.
"
Class {
	#name : #MaterialColorPharoPlatform,
	#superclass : #MaterialColorPlatform,
	#category : 'Material-Design-Colors-Platform-Pharo'
}

{ #category : #'initialize-release' }
MaterialColorPharoPlatform class >> initialize [
	self register
]

{ #category : #accessing }
MaterialColorPharoPlatform >> allSelectorsOf: aClass from: aSymbol [
	"Return the lists of selectors understood by <aClass> and categorized in a protocol named <aSymbol>"
	
	^ aClass allMethods select: [ :each | each protocol = aSymbol ] thenCollect: #selector
]

{ #category : #testing }
MaterialColorPharoPlatform >> isPharo [
	^ true
]
