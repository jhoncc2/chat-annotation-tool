initialization
registerUnion: aMessage
	aMessage uninitializeRoot.
	(self messageTrees anySatisfy: [ :e | e = aMessage messageRoot ] ) 
		ifTrue: [ ^ self ]
		ifFalse: [ ^ self messageTrees add: aMessage messageRoot ].