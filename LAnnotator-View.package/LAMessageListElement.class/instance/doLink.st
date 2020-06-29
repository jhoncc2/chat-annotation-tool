actions
doLink
	self handlgeUntangleElement: (self messageElements at: messageAnchoredIndex)  
			with: (self messageElements at: messagesHighlightedIndex).

	"self app isControlPressed
		ifFalse: [ self moveAnchoredDown ]."
	self onActionsChanged.
	
		
	