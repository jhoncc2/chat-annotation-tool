initialization
handleClick: anEvent
	anEvent target class superclass = LAMessageElement ifTrue: [ 
		anEvent target selected 
			ifFalse: [ self onMessageSelected: anEvent target. ]
			ifTrue: [ self onMessageUnselected: anEvent target. ].
			
		anEvent consumed: true.
		^ self.
	].
