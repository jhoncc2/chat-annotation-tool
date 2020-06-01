initialization
logEvent: anEvent
	logQueue isEmpty ifFalse: [
		((anEvent class == logQueue last class) 
		and: [ anEvent target == logQueue last target ])
			ifTrue: [
				anEvent class == LAAnnUIClick ifTrue: [^ self ].
			].
	].
	
	logQueue addLast: anEvent.
	
	
	