event-handling
onActionsChanged
	"self focusMessageElement."
	(self messageElements at: messageAnchoredIndex) onStrongSelected.
	(self messageElements at: messagesHighlightedIndex ) onSelected.