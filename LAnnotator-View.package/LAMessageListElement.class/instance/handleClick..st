event-handling
handleClick: anEvent
	"@deprecated"
	"trigger announcement"
	self app ifNotNil: [ self app announcer announce: LAAnnMessageClicked. ].
	
	"trigger action completed"
	anEvent target class superclass = LAMessageElement ifTrue: [ 
		anEvent target selected 
			ifFalse: [ self onMessageSelected: anEvent target. ]
			ifTrue: [ self onMessageUnselected: anEvent target. ].
			
		anEvent consumed: true.
	].
