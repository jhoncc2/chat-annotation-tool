actions
moveHighlighted: anEvent
	| delta |
	delta := 1. 
	anEvent isDirectionUp ifTrue: [ delta := -1 ].
	
	((messagesHighlightedIndex + delta) < 1 
		or: [ (messagesHighlightedIndex + delta) > self messageElements size ]) 
		ifTrue: [ ^ self ]. 
	(self messageElements at: messagesHighlightedIndex) onUnselected.
	messagesHighlightedIndex := messagesHighlightedIndex + delta.
	self onActionsChanged.
	self moveScrollToView: (self messageElements at: messagesHighlightedIndex)
	