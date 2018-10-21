"
Description
--------------------

A MaterialColorPlatform is a class managing the differences in code between different platform such as Pharo and Gemestone.

Each subclasses will be in a specific package loaded only for this language. During the loading the subclass will register itself as the current platform.

Examples
--------------------

	MaterialColorPlatform current methodsIn: aClass from: aProtocol
 

"
Class {
	#name : #MaterialColorPlatform,
	#superclass : #Object,
	#classVars : [
		'Current'
	],
	#category : 'Material-Design-Colors'
}

{ #category : #accessing }
MaterialColorPlatform class >> current [
	^ Current ifNil: [ self error: 'No platform registered' ]
]

{ #category : #initialization }
MaterialColorPlatform class >> register [
	Current := self new
]

{ #category : #accessing }
MaterialColorPlatform >> allSelectorsOf: aClass from: aSymbol [
	"Return the lists of selectors understood by <aClass> and categorized in a protocol named <aSymbol>"
	
	^ self subclassResponsibility
]

{ #category : #accessing }
MaterialColorPlatform >> isGemstone [
	^ false
]

{ #category : #testing }
MaterialColorPlatform >> isPharo [
	^ false
]
