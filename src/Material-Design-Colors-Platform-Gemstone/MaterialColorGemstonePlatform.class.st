"
Description
--------------------

I contain the Gemstone specific code of MaterialDesignColors
"
Class {
	#name : #MaterialColorGemstonePlatform,
	#superclass : #MaterialColorPlatform,
	#category : 'Material-Design-Colors-Platform-Gemstone'
}

{ #category : #'initialize-release' }
MaterialColorGemstonePlatform class >> initialize [
	self register
]

{ #category : #accessing }
MaterialColorGemstonePlatform >> allSelectorsOf: aClass from: aSymbol [
	"Return the lists of selectors understood by <aClass> and categorized in a protocol named <aSymbol>"

	^ aClass allSelectors select: [ :selector | (aClass categoryOfSelector: selector) = aSymbol ]
]

{ #category : #testing }
MaterialColorGemstonePlatform >> isGemstone [
	^ true
]
