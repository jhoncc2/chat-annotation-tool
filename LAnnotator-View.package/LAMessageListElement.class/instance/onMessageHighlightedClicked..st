event-handling
onMessageHighlightedClicked: aMessageModel
	
	"self app isControlPressed ifTrue: [ 
		(self messageElements at: messageAnchoredIndex ) onUnselected. 
		messageAnchoredIndex := aMessageModel index.
	] ifFalse: [ 
		
	]."
	| idx |
	(self messageElements at: messagesHighlightedIndex) onUnselected. 
	idx := self getIndexFromMessageModel: aMessageModel. 
	messagesHighlightedIndex := idx.
	self doLink.
	self onActionsChanged
	
	