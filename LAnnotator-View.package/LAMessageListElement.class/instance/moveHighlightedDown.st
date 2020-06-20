actions
moveHighlightedDown
	messagesHighlightedIndex = self messageElements size ifTrue: [ ^ self ]. 
	(self messageElements at: messagesHighlightedIndex) onUnselected.
	messagesHighlightedIndex := messagesHighlightedIndex + 1.
	self onActionsChanged.
	