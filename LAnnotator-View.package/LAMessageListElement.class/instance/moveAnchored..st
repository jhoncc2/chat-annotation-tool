actions
moveAnchored: anEvent
	| delta anchoredIndexOld |
	delta := 1. 
	anEvent isDirectionUp ifTrue: [ delta := -1 ].
	anchoredIndexOld:= messageAnchoredIndex.
	((messageAnchoredIndex + delta) < 1 
		or: [ (messageAnchoredIndex + delta) > self messageElements size ]) 
		ifTrue: [ ^ self ]. 
	 
	(self messageElements at: messageAnchoredIndex) onUnselected.
	messageAnchoredIndex := messageAnchoredIndex + delta.
	self onActionsChanged.
	self announceAction: (LAAnnAnchoredMessageMoved new 
											aMessage: (self messageElements at: anchoredIndexOld);
											bMessage: (self messageElements at: messageAnchoredIndex);
											yourself).
	
	
	"self moveScrollToView: (self messageElements at: messageAnchoredIndex)"