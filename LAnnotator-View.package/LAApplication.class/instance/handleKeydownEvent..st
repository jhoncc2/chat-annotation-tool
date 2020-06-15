logging
handleKeydownEvent: anEvent
	(anEvent key name = #ShiftLeft or: (anEvent key name = #ShiftRight))
			ifTrue: [ 
				anEvent consumed: true.
				self announceAction: LAAnnEnableUnlinking.
			].
	