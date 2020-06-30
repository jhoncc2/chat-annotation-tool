event-handling
onActionsChanged
	"self focusMessageElement."
	(self messageElements at: messageAnchoredIndex) onStrongSelected.
	self app isLinkingActive ifTrue: [ 
		(self messageElements at: messagesHighlightedIndex ) onSelected.
	] ifFalse: [
		(self messageElements at: messagesHighlightedIndex ) onDelSelected.
	].
