panels
initializeEvents
	super initializeEvents.
	
	self onAction: LAAnnOnAnchoredVisibility do: [ :e |
		e isVisible 
			ifTrue: [ anchoredMessagePanel isVisible ifTrue: [ 
					anchoredMessagePanel hide.
					self announceAction: (LAAnnAnchoredVisibilityChanged visibleMessage: e message)
			] ] 
			ifFalse: [ anchoredMessagePanel isVisible ifFalse: [
					anchoredMessagePanel show: e message.
					self announceAction: (LAAnnAnchoredVisibilityChanged nonVisibleMessage: e message)
			] ]].

	self onAction: LAAnnMouseEnterMessage  do: [ :e |
		self announceAction: (LAAnnMoveHighlightedMessageToIndex index: e message index)
		].
	
	"self onAction: LAAnnMouseLeaveMessage  do: [ :e | ]"
	
	