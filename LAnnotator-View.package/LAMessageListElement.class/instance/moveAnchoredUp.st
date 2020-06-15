actions
moveAnchoredUp
	messageAnchoredIndex = 1 ifTrue: [ ^self ].
	(self messageElements at: messageAnchoredIndex) onUnselected. 
	messageAnchoredIndex := messageAnchoredIndex - 1.
	self onActionsChanged.