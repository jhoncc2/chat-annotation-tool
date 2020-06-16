logging
handleKeydownEvent: anEvent
	(anEvent key name = #Z)
			ifTrue: [ 
				anEvent consumed: true.
				self announceAction: LAAnnEnableUnlinking.
			].
		
	anEvent key name = #ShiftLeft ifTrue: [ 
		anEvent consumed: true.
		isControlPressed := true.
		self announceAction: LAAnnEnableControl new
		].
	