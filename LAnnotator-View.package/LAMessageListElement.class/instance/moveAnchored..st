actions
moveAnchored: anEvent
	| delta |
	delta := 1. 
	anEvent isDirectionUp ifTrue: [ delta := -1 ].
	
	((messageAnchoredIndex + delta) < 1 
		or: [ (messageAnchoredIndex + delta) > self messageElements size ]) 
		ifTrue: [ ^ self ]. 
	 
	(self messageElements at: messageAnchoredIndex) onUnselected.
	messageAnchoredIndex := messageAnchoredIndex + delta.
	self onActionsChanged.
	
	self announceAction: LAAnnMessageAnchoredMoved new.
	
	"self moveScrollToView: (self messageElements at: messageAnchoredIndex)"