actions
updateScrollPosition
	|view|
	view := messageElements at: messagesHighlightedIndex.
	self moveScrollToView: view.