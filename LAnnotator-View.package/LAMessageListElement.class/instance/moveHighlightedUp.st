actions
moveHighlightedUp
	messagesHighlightedIndex = 1 ifTrue: [ ^ self ]. 
	(self messageElements at: messagesHighlightedIndex) onUnselected.
	messagesHighlightedIndex := messagesHighlightedIndex - 1.
	self onActionsChanged.