event-handling
onMessageUnselected: aLAMessageElement
	aLAMessageElement onUnselected.
	messagesSelected := messagesSelected -1.
	messageSelectedIndex := nil.