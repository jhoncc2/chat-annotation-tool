event-handling
onMessageHighlightedClicked: aMessageModel
	
	"self app isControlPressed ifTrue: [ 
		(self messageElements at: messageAnchoredIndex ) onUnselected. 
		messageAnchoredIndex := aMessageModel index.
	] ifFalse: [ 
		
	]."
	(self messageElements at: messagesHighlightedIndex) onUnselected. 
	messagesHighlightedIndex := aMessageModel index.
	self doLink.
	self onActionsChanged
	
	