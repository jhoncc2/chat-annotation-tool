event-handling
onActionsChanged
	"self focusMessageElement."
	(self messageElements at: messageAnchoredIndex) onStrongSelected.
	self isLinkingActive ifTrue: [
		self isPreselectActive ifTrue: [
			(self messageElements at: messagesHighlightedIndex ) onStrongSelected.
		] ifFalse: [ 
		 	(self messageElements at: messagesHighlightedIndex ) onSelected.
		].
	] ifFalse: [
		(self messageElements at: messagesHighlightedIndex ) onDelSelected.
	].
