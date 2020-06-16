initialization
initialize
	super initialize.
	isControlEnabled := false.
	messagesSelected := 0.
	isDeleteActive := false.
	uiIndex := 0.
	messageSelectedIndex := 0.
	messageElements := OrderedCollection empty.
	anchoredMessage := false.
	