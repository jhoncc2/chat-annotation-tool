actions
moveHighlighted: anEvent
	| delta scrollDist highlightedIndexOld |
	delta := 1. 
	anEvent isDirectionUp ifTrue: [ delta := -1 ].
	highlightedIndexOld := messagesHighlightedIndex.
	((messagesHighlightedIndex + delta) < 1 
		or: [ (messagesHighlightedIndex + delta) > self messageElements size ]) 
		ifTrue: [ ^ self ]. 
	(self messageElements at: messagesHighlightedIndex) onUnselected.
	messagesHighlightedIndex := messagesHighlightedIndex + delta.
	self onActionsChanged.
	
	scrollDist := self moveScrollToView: (self messageElements at: messagesHighlightedIndex).
	
	(self isAnchoredMessageOutOfView: scrollDist)
		ifTrue: [ self announceAction: (LAAnnOnAnchoredVisibility 
				message: (self messageElements at: messageAnchoredIndex) isVisible: false) ]
		ifFalse: [ self announceAction:  (LAAnnOnAnchoredVisibility 
				message: (self messageElements at: messageAnchoredIndex) isVisible: true)].
	self announceAction: (LAAnnHighlightedMessageMoved new 
											aMessage: (self messageElements at: highlightedIndexOld);
											bMessage: (self messageElements at: messagesHighlightedIndex);
											yourself).