events
handleKeydownEvent: anEvent
	(anEvent key name = #ShiftLeft or: (anEvent key name = #ShiftLeft))
			ifTrue: [ 
				anEvent consumed: true. 
				^ controlPanel switchUntaglingMode.
			].
	