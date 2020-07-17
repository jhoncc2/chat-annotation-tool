panels
initializeEvents
	super initializeEvents.
	
	self onAction: LAAnnMessageRightClicked do: [ :e |
		self announceAction: (LAAnnDoLinkMessage new 
											aMessage: listView messageAnchored;
											bMessage: e message;
											yourself)
			].
	
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
		self announceAction: (LAAnnMoveHighlightedMessageToIndex index: (listView messageElements indexOf: e message))
		].
	
	self onAction: LAAnnMessageAnchoredMoveButton  do: [ :e |
		self announceAction: (LAAnnMoveAnchoredMessageToIndex index: (listView messageElements indexOf: e message))
		].

	self onAction: LAAnnMessageUnlinkButton  do: [ :e |
		
		self announceAction: (LAAnnDoUnlinkMessage new 
											aMessage: listView messageAnchored;
											bMessage: e message;
											yourself)
		].	
	"self onAction: LAAnnMouseLeaveMessage  do: [ :e | ]"
	
	