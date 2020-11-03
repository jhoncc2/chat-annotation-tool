panels
handleKeydownEvent: anEvent
	self announceAction: (LAAnnKeyDown key: anEvent key name).
		
	anEvent key name = #ShiftLeft ifTrue: [ 
		isLinkingActive := false.
		self announceAction: LAAnnEnableUnlinking new.
		anEvent consumed: true.
		].
	