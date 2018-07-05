Description
--------------------

A MaterialColorPlatform is a class managing the differences in code between different platform such as Pharo and Gemestone.

Each subclasses will be in a specific package loaded only for this language. During the loading the subclass will register itself as the current platform.

Examples
--------------------

	MaterialColorPlatform current methodsIn: aClass from: aProtocol
 
