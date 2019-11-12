mouse handlers
keyDownEvent: anEvent
	| target |
	anEvent key name = #R ifFalse: [ ^ self ]. 
	
	target := anEvent target.
	[target class = LAMessageListElement] whileFalse: [ 
		target := target parent.	
	]. 
	target switchMode