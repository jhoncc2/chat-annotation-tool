actions
moveAnchoredDown
	messageAnchoredIndex = self messageElements size ifTrue: [ ^ self ]. 
	(self messageElements at: messageAnchoredIndex) onUnselected.
	messageAnchoredIndex := messageAnchoredIndex + 1.
	self onActionsChanged.