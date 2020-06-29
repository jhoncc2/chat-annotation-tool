logging
handleKeydownEvent: anEvent
	self announceAction: (LAAnnKeyDown key: anEvent key name).
	
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
	