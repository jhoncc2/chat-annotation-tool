logging
handleKeydownEvent: anEvent
	(anEvent key name = #ShiftLeft or: [anEvent key name = #ShiftRight])
			ifTrue: [ 
				anEvent consumed: true.
				self announceAction: LAAnnEnableUnlinking.
			].
		
	anEvent key name = #Q ifTrue: [ 
		anEvent consumed: true.
		isControlPressed := true ].
	