panels
initializeEvents
	super initializeEvents.
	
	self onAction: LAAnnOnAnchoredVisibility do: [ :e |
		e isVisible ifTrue: [ anchoredMessagePanel hide ] ifFalse: [ anchoredMessagePanel show: e message ]
 	].
	
	