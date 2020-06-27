logging
handleKeydownEvent: anEvent
	(anEvent key name = #Z)
			ifTrue: [ 
				isLinkingActive := false.
				self announceAction: LAAnnEnableUnlinking new.
				anEvent consumed: true.
			].
		
	anEvent key name = #ShiftLeft ifTrue: [ 
		isControlPressed := true.
		self announceAction: LAAnnEnableControl new.
		anEvent consumed: true.
		].
	