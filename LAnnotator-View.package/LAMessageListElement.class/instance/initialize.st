initialization
initialize
	super initialize.
	isControlEnabled := false.
	messagesSelected := 1.
	isLinkingActive := true.
	isPreselectActive := false.
	uiIndex := 0.
	messageSelectedIndex := 1.
	messageElements := OrderedCollection empty.
	anchoredMessage := false.
	messagesHighlightedIndex :=1.
	messageAnchoredIndex :=1.
	